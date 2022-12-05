import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart';

import 'package:fidelity/pages/connexion/connexion.dart';

void main() {
  test('Support la comparaison', () {
    expect(
        const ConnexionState(),
      const ConnexionState(),
    );
  });
  test('Copywith', () {
    expect(
        const ConnexionState().copywith(),
      const ConnexionState(),
    );
  });

  
  test('Copywith statut', () {
    expect(
        const ConnexionState().copywith(status: FormzStatus.invalid),
      const ConnexionState(status: FormzStatus.invalid),
    );
  });
  

}
