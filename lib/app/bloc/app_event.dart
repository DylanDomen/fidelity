part of 'app_bloc.dart';

class AppEvent extends Equatable {
  const AppEvent();

  @override
  List<Object?> get props => [];
}

class Connexion extends AppEvent {
  const Connexion();

  @override
  List<Object?> get props => [];
}

class Deconnexion extends AppEvent {
  const Deconnexion();

  @override
  List<Object?> get props => [];
}

class RedirectionListeClient extends AppEvent {
  const RedirectionListeClient();

  @override
  List<Object?> get props => [];
}

class RedirectionInfosClient extends AppEvent {
  const RedirectionInfosClient({required this.utilisateur});

  final Utilisateur utilisateur;

  @override
  List<Object?> get props => [utilisateur];
}
