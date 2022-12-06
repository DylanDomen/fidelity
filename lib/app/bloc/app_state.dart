part of 'app_bloc.dart';

enum EtapeApp {
  listeClient,
  infosClient,
  connexion,
}

class AppState extends Equatable {
  const AppState({
    this.etapeApp = EtapeApp.connexion,
    this.utilisateur,
  });

  final EtapeApp etapeApp;
  final Utilisateur? utilisateur;

  AppState copywith({
    EtapeApp? etapeApp,
    Utilisateur? utilisateur,
  }) {
    return AppState(
      etapeApp: etapeApp ?? this.etapeApp,
      utilisateur: utilisateur ?? this.utilisateur,
    );
  }

  @override
  List<Object?> get props => [
        etapeApp,
        utilisateur,
      ];
}
