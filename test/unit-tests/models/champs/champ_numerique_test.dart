import 'package:fidelity/models/champs/champ_numerique.dart';
import 'package:test/test.dart';

void main() {
  const num = 5.0;
  group('Numerique', () {
    group('constructeur', () {
      test('pure creer une instance correct', () {
        const monNum = ChampNumerique.pure();
        expect(monNum.value, 0);
        expect(monNum.pure, true);
      });
      test('dirty creer une instance correct', () {
        const monNum = ChampNumerique.dirty(num);
        expect(monNum.value, 5);
        expect(monNum.pure, false);
      });
    });
  });
  group('Validateur', () {
    test('retourne null pas de validateur', () {
      expect(const ChampNumerique.dirty(num).error, isNull);
    });
  });
}
