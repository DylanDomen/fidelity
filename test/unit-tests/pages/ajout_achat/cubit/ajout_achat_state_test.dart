import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart';

import 'package:fidelity/pages/ajout_achat/ajout_achat.dart';

void main() {
  test('Support la comparaison', () {
    expect(
        const AjoutAchatState(),
      const AjoutAchatState(),
    );
  });
  test('Copywith', () {
    expect(
        const AjoutAchatState().copywith(),
      const AjoutAchatState(),
    );
  });

  
  test('Copywith statut', () {
    expect(
        const AjoutAchatState().copywith(status: FormzStatus.invalid),
      const AjoutAchatState(status: FormzStatus.invalid),
    );
  });
  

}
