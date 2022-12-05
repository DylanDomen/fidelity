import 'package:flutter_test/flutter_test.dart';


import 'package:fidelity/pages/infos_client/infos_client.dart';

void main() {
  test('Support la comparaison', () {
    expect(
        const InfosClientState(),
      const InfosClientState(),
    );
  });
  test('Copywith', () {
    expect(
        const InfosClientState().copywith(),
      const InfosClientState(),
    );
  });

  

}
