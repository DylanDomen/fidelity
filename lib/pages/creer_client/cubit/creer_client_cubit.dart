import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fidelity/models/carte_fidelite.dart';
import 'package:fidelity/models/champs/champ_texte.dart';
import 'package:fidelity/models/champs/email.dart';
import 'package:fidelity/models/champs/mobile.dart';
import 'package:fidelity/models/role.dart';
import 'package:fidelity/models/utilisateur.dart';
import 'package:fidelity/repository/carte_fidelite_repository.dart';
import 'package:fidelity/repository/utilisateur_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:formz/formz.dart';

part 'creer_client_state.dart';

class CreerClientCubit extends Cubit<CreerClientState> {
  CreerClientCubit({
    required this.utilisateurRepository,
    required this.navigatorState,
    required this.carteFideliteRepository,
  }) : super(const CreerClientState());

  final UtilisateurRepository utilisateurRepository;
  final NavigatorState navigatorState;
  final CarteFideliteRepository carteFideliteRepository;

  void nomModifier({required String nomTexte}) {
    final nom = ChampTexte.dirty(nomTexte);
    emit(
      state.copywith(
        nom: nom,
        status: Formz.validate([
          nom,
          state.prenom,
          state.mail,
          state.mobile,
          state.numCarteFidelite,
        ]),
      ),
    );
  }

  void prenomModifier({required String prenomTexte}) {
    final prenom = ChampTexte.dirty(prenomTexte);
    emit(
      state.copywith(
        prenom: prenom,
        status: Formz.validate([
          state.nom,
          prenom,
          state.mail,
          state.mobile,
          state.numCarteFidelite,
        ]),
      ),
    );
  }

  void mailModifier({required String mailTexte}) {
    final mail = Email.dirty(mailTexte);
    emit(
      state.copywith(
        mail: mail,
        status: Formz.validate([
          state.nom,
          state.prenom,
          mail,
          state.mobile,
          state.numCarteFidelite,
        ]),
      ),
    );
  }

  void mobileModifier({required String mobileTexte}) {
    final mobile = Mobile.dirty(mobileTexte);
    emit(
      state.copywith(
        mobile: mobile,
        status: Formz.validate([
          state.nom,
          state.prenom,
          state.mail,
          mobile,
          state.numCarteFidelite,
        ]),
      ),
    );
  }

  void numCarteFideliteModifier({required String numCarteFideliteTexte}) {
    final numCarteFidelite = ChampTexte.dirty(numCarteFideliteTexte);
    emit(
      state.copywith(
        numCarteFidelite: numCarteFidelite,
        status: Formz.validate([
          state.nom,
          state.prenom,
          state.mail,
          state.mobile,
          numCarteFidelite,
        ]),
      ),
    );
  }

  void fermer() {
    navigatorState.pop();
  }

  Future<void> submit() async {
    if (state.status.isValidated) {
      emit(state.copywith(status: FormzStatus.submissionInProgress));
      try {
        final carteFidelite = await carteFideliteRepository
            .verifieCarteFideliteExisteViaNumeroCarte(
          numeroCarte: state.numCarteFidelite.value,
        );

        if (carteFidelite == null) {
          final utilisateurAjouter =
              await utilisateurRepository.ajouterUtilisateur(
            utilisateur: Utilisateur(
              nom: state.nom.value,
              role: Role.client,
              mobile: state.mobile.value,
              mail: state.mail.value,
              prenom: state.prenom.value,
            ),
          );
          await carteFideliteRepository.creerCarteFidelite(
            carteFidelite: CarteFidelite(
              numeroCarte: state.numCarteFidelite.value,
              pointsFidelite: 0,
              mobileUtilisateur: state.mobile.value,
              mailUtilisateur: state.mail.value,
              nomPrenomUtilisateur: '${state.nom.value} ${state.prenom.value}',
              uidUtilisateur: utilisateurAjouter.uidUtilisateur!,
            ),
          );
          emit(state.copywith(status: FormzStatus.submissionSuccess));
          fermer();
        } else {
          emit(
            state.copywith(
              status: FormzStatus.submissionFailure,
              messageErreur: 'Cette carte de fidélité est déjà attribué',
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
