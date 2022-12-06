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

  test('Supporte comparaison', () {
    expect(const AppState(), const AppState());
  });
  test('Copywith', () {
    expect(const AppState().copywith(), const AppState());
  });
  test('Copywith etape application', () {
    expect(
      const AppState().copywith(etapeApp: EtapeApp.listeClient),
      const AppState(etapeApp: EtapeApp.listeClient),
    );
  });
  test('Copywith utilisateur', () {
    expect(
      AppState().copywith(utilisateur: utilisateur),
      AppState(utilisateur: utilisateur),
    );
  });
}
