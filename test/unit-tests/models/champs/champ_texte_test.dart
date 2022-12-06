import 'package:fidelity/models/champs/champ_texte.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const texteString = 'Dylan';
  group('Text', () {
    group('constructeur', () {
      test('pure creer une instance correct', () {
        const texte = ChampTexte.pure();
        expect(texte.value, '');
        expect(texte.pure, true);
      });
      test('dirty creer une instance correct', () {
        const texte = ChampTexte.dirty(texteString);
        expect(texte.value, texteString);
        expect(texte.pure, false);
      });
    });
  });
  group('Validateur', () {
    test('retourne empty erreur quand mobile est vide', () {
      expect(const ChampTexte.dirty('').error, ChampTexteValidationError.empty);
    });
    test('retourne erreur quand mobile mal formaté', () {
      expect(
        const ChampTexte.dirty('<dylan>').error,
        ChampTexteValidationError.notValid,
      );
    });
    test('retourne null quand mobile correct', () {
      expect(const ChampTexte.dirty('dylan').error, isNull);
    });
  });
  group('Message erreur', () {
    test('Message empty erreur', () {
      expect(ChampTexteValidationError.empty.msgErreur, 'Requis !');
    });
    test('Message notValid erreur', () {
      expect(ChampTexteValidationError.notValid.msgErreur, 'Texte invalide');
    });
  });
}
