import 'package:bloc_test/bloc_test.dart';
import 'package:fidelity/app/bloc/app_bloc.dart';
import 'package:fidelity/models/utilisateur.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockUtilisateur extends Mock implements Utilisateur {}

void main() {
  late Utilisateur utilisateur;

  setUp(() {
    utilisateur = MockUtilisateur();
  });

  blocTest<AppBloc, AppState>(
    'connexion',
    build: () => AppBloc()
      ..emit(
        const AppState(),
      ),
    act: (bloc) => bloc.add(const Connexion()),
    expect: () => [
      const AppState(
        etapeApp: EtapeApp.listeClient,
      ),
    ],
  );

  blocTest<AppBloc, AppState>(
    'déconnexion',
    build: () => AppBloc()
      ..emit(
        const AppState(etapeApp: EtapeApp.listeClient),
      ),
    act: (bloc) => bloc.add(const Deconnexion()),
    expect: () => [
      const AppState(),
    ],
  );

  blocTest<AppBloc, AppState>(
    'Redirection liste client',
    build: () => AppBloc()
      ..emit(
        const AppState(),
      ),
    act: (bloc) => bloc.add(const RedirectionListeClient()),
    expect: () => [
      const AppState(
        etapeApp: EtapeApp.listeClient,
      ),
    ],
  );

  blocTest<AppBloc, AppState>(
    'Redirection infos client',
    build: () => AppBloc()
      ..emit(
        const AppState(),
      ),
    act: (bloc) => bloc.add(RedirectionInfosClient(utilisateur: utilisateur)),
    expect: () => [
      AppState(
        etapeApp: EtapeApp.infosClient,
        utilisateur: utilisateur,
      ),
    ],
  );
}
