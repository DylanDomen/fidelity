import 'package:fidelity/models/champs/mot_de_passe.dart';
import 'package:test/test.dart';

void main() {
  const motDePasseString = 'mock-MotDePasse';
  group('MotDePasse', () {
    group('constructeur', () {
      test('pure creer une instance correct', () {
        const motDePasse = MotDePasse.pure();
        expect(motDePasse.value, '');
        expect(motDePasse.pure, true);
      });
      test('dirty creer une instance correct', () {
        const motDePasse = MotDePasse.dirty(motDePasseString);
        expect(motDePasse.value, motDePasseString);
        expect(motDePasse.pure, false);
      });
    });
  });
  group('Validateur', () {
    test('retourne empty erreur quand email est vide', () {
      expect(const MotDePasse.dirty('').error, MotDePasseValidationError.empty);
    });
    test('retourne empty erreur quand mot de passe inferieur 6 caracteres', () {
      expect(
        const MotDePasse.dirty('123').error,
        MotDePasseValidationError.notPassword,
      );
    });
    test('retourne pas null quand pas erreur', () {
      expect(const MotDePasse.dirty('123456').error, isNull);
    });
  });
  group('Message erreur', () {
    test('Message empty erreur', () {
      expect(MotDePasseValidationError.empty.msgErreur, 'Requis !');
    });
    test('Message notEmail erreur', () {
      expect(
        MotDePasseValidationError.notPassword.msgErreur,
        'Mot de passe 6 caractéres minimum',
      );
    });
  });
}
