import 'package:flutter_test/flutter_test.dart';


import 'package:fidelity/pages/liste_client/liste_client.dart';

void main() {
  test('Support la comparaison', () {
    expect(
        const ListeClientState(),
      const ListeClientState(),
    );
  });
  test('Copywith', () {
    expect(
        const ListeClientState().copywith(),
      const ListeClientState(),
    );
  });

  

}
