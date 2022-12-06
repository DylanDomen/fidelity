import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fidelity/app/bloc/app_bloc.dart';
import 'package:fidelity/models/champs/champ_texte.dart';
import 'package:fidelity/models/champs/email.dart';
import 'package:fidelity/models/champs/mobile.dart';
import 'package:fidelity/models/utilisateur.dart';
import 'package:fidelity/repository/utilisateur_repository.dart';

part 'liste_client_state.dart';

class ListeClientCubit extends Cubit<ListeClientState> {
  ListeClientCubit({
    required this.utilisateurRepository,
    required this.appBloc,
  }) : super(const ListeClientState()) {
    utilisateurRepository.listeClients().listen((clients) {
      emit(state.copywith(listeClients: clients));
      filtreClients();
    });
  }

  final UtilisateurRepository utilisateurRepository;
  final AppBloc appBloc;

  void filtreClients() {
    final listClientsFiltre = state.listeClients
        .where(
          (client) =>
              (state.nom.value == '' || client.nom.contains(state.nom.value)) &&
              (state.mail.value == '' ||
                  client.mail.contains(state.mail.value)) &&
              (state.mobile.value == '' ||
                  client.mobile.contains(state.mobile.value)),
        )
        .toList();
    emit(
      state.copywith(
        listeClientsFiltre: listClientsFiltre,
      ),
    );
  }

  void nomModifier({required String nomTexte}) {
    final nom = ChampTexte.dirty(nomTexte);
    if (state.nom != nom) {
      emit(state.copywith(nom: nom));
      filtreClients();
    }
  }

  void mailModifier({required String mailTexte}) {
    final mail = Email.dirty(mailTexte);
    if (state.mail != mail) {
      emit(state.copywith(mail: mail));
      filtreClients();
    }
  }

  void mobileModifier({required String mobileTexte}) {
    final mobile = Mobile.dirty(mobileTexte);
    if (state.mobile != mobile) {
      emit(state.copywith(mobile: mobile));
      filtreClients();
    }
  }

  void selectionneClient({required Utilisateur utilisateur}) {
    appBloc.add(
      RedirectionInfosClient(
        utilisateur: utilisateur,
      ),
    );
  }

  void supprimerClient({required Utilisateur utilisateur}) {
    utilisateurRepository.supprimerUtilisateur(
      uidUtilisateur: utilisateur.uidUtilisateur!,
    );
  }

  void deconnexion() {
    appBloc.add(
      const Connexion(),
    );
  }
}
