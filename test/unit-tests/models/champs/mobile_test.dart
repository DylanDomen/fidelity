import 'package:fidelity/models/champs/mobile.dart';
import 'package:test/test.dart';

void main() {
  const mobileString = '0692151515';

  group('Mobile', () {
    group('constructeur', () {
      test('pure creer une instance correct', () {
        const mobile = Mobile.pure();
        expect(mobile.value, '');
        expect(mobile.pure, true);
      });
      test('dirty creer une instance correct', () {
        const mobile = Mobile.dirty(mobileString);
        expect(mobile.value, mobileString);
        expect(mobile.pure, false);
      });
    });
  });
  group('Validateur', () {
    test('retourne empty erreur quand mobile est vide', () {
      expect(const Mobile.dirty('').error, MobileValidationError.empty);
    });
    test('retourne erreur quand mobile mal formaté', () {
      expect(
        const Mobile.dirty('test.com').error,
        MobileValidationError.notMobile,
      );
    });
    test('retourne null quand mobile correct', () {
      expect(const Mobile.dirty('0692151515').error, isNull);
    });
  });
  group('Message erreur', () {
    test('Message empty erreur', () {
      expect(MobileValidationError.empty.msgErreur, 'Requis !');
    });
    test('Message notMobile erreur', () {
      expect(MobileValidationError.notMobile.msgErreur,
          'Numero de mobile mauvais format');
    });
  });
}
