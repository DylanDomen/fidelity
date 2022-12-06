import 'package:fidelity/models/champs/champ_texte.dart';
import 'package:fidelity/models/champs/email.dart';
import 'package:fidelity/models/champs/mobile.dart';
import 'package:fidelity/pages/creer_client/creer_client.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart';

void main() {
  test('Support la comparaison', () {
    expect(
      const CreerClientState(),
      const CreerClientState(),
    );
  });
  test('Copywith', () {
    expect(
      const CreerClientState().copywith(),
      const CreerClientState(),
    );
  });

  test('Copywith statut', () {
    expect(
      const CreerClientState().copywith(status: FormzStatus.invalid),
      const CreerClientState(status: FormzStatus.invalid),
    );
  });

  test('Copywith nom', () {
    expect(
      const CreerClientState().copywith(
        nom: const ChampTexte.dirty('nom'),
      ),
      const CreerClientState(nom: ChampTexte.dirty('nom')),
    );
  });
  test('Copywith prenom', () {
    expect(
      const CreerClientState().copywith(
        prenom: const ChampTexte.dirty('prenom'),
      ),
      const CreerClientState(prenom: ChampTexte.dirty('prenom')),
    );
  });
  test('Copywith mail', () {
    expect(
      const CreerClientState().copywith(
        mail: const Email.dirty('mail@gmail.com'),
      ),
      const CreerClientState(mail: Email.dirty('mail@gmail.com')),
    );
  });

  test('Copywith mobile', () {
    expect(
      const CreerClientState().copywith(
        mobile: const Mobile.dirty('0692151515'),
      ),
      const CreerClientState(mobile: Mobile.dirty('0692151515')),
    );
  });
  test('Copywith numeroCarteFidelite', () {
    expect(
      const CreerClientState().copywith(
        numCarteFidelite: const ChampTexte.dirty('Fad561gfvr'),
      ),
      const CreerClientState(numCarteFidelite: ChampTexte.dirty('Fad561gfvr')),
    );
  });
}
