import 'package:fidelity/models/champs/champ_texte.dart';
import 'package:fidelity/models/champs/email.dart';
import 'package:fidelity/models/champs/mobile.dart';
import 'package:fidelity/models/utilisateur.dart';
import 'package:fidelity/pages/liste_client/liste_client.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockUtilisateur extends Mock implements Utilisateur {}

void main() {
  late Utilisateur utilisateur;
  late Utilisateur utilisateur2;
  late List<Utilisateur> listeClients;

  setUp(() {
    utilisateur = MockUtilisateur();
    utilisateur2 = MockUtilisateur();
    listeClients = [utilisateur, utilisateur2];
  });
  test('Support la comparaison', () {
    expect(
      const ListeClientState(),
      const ListeClientState(),
    );
  });
  test('Copywith', () {
    expect(
      ListeClientState().copywith(),
      ListeClientState(),
    );
  });

  test('Copywith liste clients', () {
    expect(
      const ListeClientState().copywith(listeClients: listeClients),
      ListeClientState(listeClients: listeClients),
    );
  });

  test('Copywith liste clients filtre', () {
    expect(
      const ListeClientState().copywith(listeClientsFiltre: listeClients),
      ListeClientState(listeClientsFiltre: listeClients),
    );
  });
  test('Copywith nom', () {
    expect(
      const ListeClientState().copywith(
        nom: const ChampTexte.dirty('nom'),
      ),
      const ListeClientState(nom: ChampTexte.dirty('nom')),
    );
  });
  test('Copywith mail', () {
    expect(
      const ListeClientState().copywith(
        mail: const Email.dirty('dylan.domen@gmail.com'),
      ),
      const ListeClientState(mail: Email.dirty('dylan.domen@gmail.com')),
    );
  });

  test('Copywith mobile', () {
    expect(
      const ListeClientState().copywith(
        mobile: const Mobile.dirty('0692151515'),
      ),
      const ListeClientState(mobile: Mobile.dirty('0692151515')),
    );
  });
}
