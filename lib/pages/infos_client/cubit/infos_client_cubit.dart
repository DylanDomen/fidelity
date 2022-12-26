import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fidelity/app/bloc/app_bloc.dart';
import 'package:fidelity/models/achat.dart';
import 'package:fidelity/models/utilisateur.dart';
import 'package:fidelity/repository/achat_repository.dart';
import 'package:fidelity/repository/carte_fidelite_repository.dart';
import 'package:fidelity/repository/utilisateur_repository.dart';

part 'infos_client_state.dart';

class InfosClientCubit extends Cubit<InfosClientState> {
  InfosClientCubit({
    required this.utilisateurRepository,
    required this.achatRepository,
    required this.carteFideliteRepository,
    required this.appBloc,
  }) : super(InfosClientState(utilisateur: appBloc.state.utilisateur!)) {
    utilisateurRepository
        .selectionneUtilisateur(
      uidUtilisateur: appBloc.state.utilisateur!.uidUtilisateur!,
    )
        .listen((utilisateur) {
      emit(state.copywith(utilisateur: utilisateur));
    });

    carteFideliteRepository
        .selectionneCarteFideliteViaUidUtilisateur(
      uidUtilisateur: appBloc.state.utilisateur!.uidUtilisateur!,
    )
        .listen((carteFidelite) {
      emit(
        state.copywith(
          nbPointsFidelite: carteFidelite!.pointsFidelite,
          numeroCarte: carteFidelite.numeroCarte,
        ),
      );
    });

    achatRepository
        .listeAchatsClient(uidUtilisateur: state.utilisateur.uidUtilisateur!)
        .listen((listeAchats) {
      emit(state.copywith(listeAchats: listeAchats));
    });
  }

  final UtilisateurRepository utilisateurRepository;
  final AchatRepository achatRepository;
  final CarteFideliteRepository carteFideliteRepository;
  final AppBloc appBloc;

  void supprimerAchat({required Achat achat}) {
    achatRepository.supprimerAchat(uidAchat: achat.uidAchat!);
  }

  void fermer() {
    appBloc.add(
      const RedirectionListeClient(),
    );
  }
}
