import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart';

import 'package:fidelity/pages/creer_client/creer_client.dart';

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
  

}
