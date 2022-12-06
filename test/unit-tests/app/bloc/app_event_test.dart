import 'package:fidelity/app/bloc/app_bloc.dart';
import 'package:fidelity/models/utilisateur.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockUtilisateur extends Mock implements Utilisateur {}

void main() {
  late Utilisateur utilisateur;

  setUp(() {
    utilisateur = MockUtilisateur();
  });
  test('Supporte comparaison connexion', () {
    expect(const Connexion(), const Connexion());
  });
  test('Supporte comparaison Deconnexion', () {
    expect(const Deconnexion(), const Deconnexion());
  });
  test('Supporte comparaison RedirectionListeClient', () {
    expect(const RedirectionListeClient(), const RedirectionListeClient());
  });
  test('Supporte comparaison RedirectionInfosClient', () {
    expect(RedirectionInfosClient(utilisateur: utilisateur),
        RedirectionInfosClient(utilisateur: utilisateur));
  });
}
