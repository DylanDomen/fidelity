import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fidelity/app/bloc/app_bloc.dart';
import 'package:fidelity/models/champs/email.dart';
import 'package:fidelity/models/champs/mot_de_passe.dart';
import 'package:fidelity/repository/authentification_repository.dart';
import 'package:formz/formz.dart';

part 'connexion_state.dart';

class ConnexionCubit extends Cubit<ConnexionState> {
  ConnexionCubit({
    required this.authentificationRepository,
    required this.appBloc,
  }) : super(const ConnexionState());

  final AuthentificationRepository authentificationRepository;
  final AppBloc appBloc;

  void mailModifier({required String mailTexte}) {
    final mail = Email.dirty(mailTexte);
    emit(
      state.copywith(
        mail: mail,
        status: Formz.validate([
          mail,
          state.motDePasse,
        ]),
      ),
    );
  }

  void motDePasseModifier({required String motDePasseTexte}) {
    final motDePasse = MotDePasse.dirty(motDePasseTexte);
    emit(
      state.copywith(
        motDePasse: motDePasse,
        status: Formz.validate([
          state.mail,
          motDePasse,
        ]),
      ),
    );
  }

  Future<void> submit() async {
    if (state.status.isValidated) {
      emit(state.copywith(status: FormzStatus.submissionInProgress));
      try {
        await authentificationRepository.connexionAvecEmailEtMotDePasse(
          email: state.mail.value,
          password: state.motDePasse.value,
        );
        appBloc.add(
          const RedirectionListeClient(),
        );
        emit(state.copywith(status: FormzStatus.submissionSuccess));
      } on LogInWithEmailAndPasswordFailure catch (e) {
        emit(
          state.copywith(
            status: FormzStatus.submissionFailure,
            messageErreur: e.message,
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
      emit(state.copywith(
          status: FormzStatus.submissionFailure,
          messageErreur: 'Formulaire invalide'));
      emit(
        state.copywith(
          status: FormzStatus.submissionFailure,
          messageErreur: '',
        ),
      );
    }
  }
}
