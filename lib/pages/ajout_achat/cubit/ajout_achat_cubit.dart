import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fidelity/app/bloc/app_bloc.dart';
import 'package:fidelity/models/achat.dart';
import 'package:fidelity/models/champs/champ_magasin.dart';
import 'package:fidelity/models/champs/champ_numerique.dart';
import 'package:fidelity/models/magasin.dart';
import 'package:fidelity/repository/achat_repository.dart';
import 'package:fidelity/repository/carte_fidelite_repository.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';

part 'ajout_achat_state.dart';

class AjoutAchatCubit extends Cubit<AjoutAchatState> {
  AjoutAchatCubit({
    required this.achatRepository,
    required this.navigatorState,
    required this.appBloc,
    required this.carteFideliteRepository,
  }) : super(const AjoutAchatState()) {}

  final AchatRepository achatRepository;
  final CarteFideliteRepository carteFideliteRepository;
  AppBloc appBloc;
  final NavigatorState navigatorState;

  void montantInitialModifier({required double montantInitialTexte}) {
    final montantInitial = ChampNumerique.dirty(montantInitialTexte);
    emit(
      state.copywith(
        montantInitial: montantInitial,
        status: Formz.validate([
          montantInitial,
          state.magasin,
          state.nbPointsUtilise,
        ]),
      ),
    );
  }

  void magasinModifier({required Magasin magasinTexte}) {
    final magasin = ChampMagasin.dirty(magasinTexte);
    emit(
      state.copywith(
        magasin: magasin,
        status: Formz.validate([
          state.montantInitial,
          magasin,
          state.nbPointsUtilise,
        ]),
      ),
    );
  }

  void nbPointsUtiliseModifier({required double nbPointsUtiliseTexte}) {
    final nbPointsUtilise = ChampNumerique.dirty(nbPointsUtiliseTexte);
    emit(
      state.copywith(
        nbPointsUtilise: nbPointsUtilise,
        status: Formz.validate([
          state.montantInitial,
          state.magasin,
          nbPointsUtilise,
        ]),
      ),
    );
  }

  void fermer() {
    navigatorState.pop();
  }

  Future<void> submit() async {
    if (state.status.isValidated) {
      emit(
        state.copywith(
          status: FormzStatus.submissionInProgress,
          nbPointsGagner:
              ((state.montantInitial.value - state.nbPointsUtilise.value) / 10)
                  .toInt(),
          nbPointsPerdu: state.nbPointsUtilise.value.toInt(),
          montantFinal: state.montantInitial.value - state.nbPointsPerdu,
        ),
      );
      try {
        final carteFidelite = await carteFideliteRepository
            .verifieCarteFideliteExisteViaUidUtilisateur(
          uidUtilisateur: appBloc.state.utilisateur!.uidUtilisateur!,
        );
        if (carteFidelite != null) {
          await achatRepository.creerAchat(
            achat: Achat(
              montantInitial: state.montantInitial.value,
              montantFinal: state.montantFinal,
              uidUtilisateur: appBloc.state.utilisateur!.uidUtilisateur!,
              magasin: state.magasin.value!,
              nombrePointsPerdu: state.nbPointsPerdu,
              nombrePointsGagne: state.nbPointsGagner,
            ),
          );
          final carteFideliteModifie = carteFidelite.copywith(
            pointsFidelite: carteFidelite.pointsFidelite +
                state.nbPointsGagner -
                state.nbPointsPerdu,
          );
          await carteFideliteRepository.modifierCarteFidelite(
            carteFidelite: carteFideliteModifie,
          );
          emit(state.copywith(status: FormzStatus.submissionSuccess));
          fermer();
        } else {
          emit(
            state.copywith(
              status: FormzStatus.submissionFailure,
              messageErreur:
                  'la carte de fidelite de ce client est innexistante',
            ),
          );
          emit(
            state.copywith(
              status: FormzStatus.submissionFailure,
              messageErreur: '',
            ),
          );
        }
      } catch (e) {
        emit(
          state.copywith(
            status: FormzStatus.submissionFailure,
            messageErreur: e.toString(),
          ),
        );
        emit(
          state.copywith(
            status: FormzStatus.submissionFailure,
            messageErreur: '',
          ),
        );
      }
    } else {
      emit(
        state.copywith(
          status: FormzStatus.submissionFailure,
          messageErreur: 'Formulaire invalide',
        ),
      );
      emit(
        state.copywith(
          status: FormzStatus.submissionFailure,
          messageErreur: '',
        ),
      );
    }
  }
}
