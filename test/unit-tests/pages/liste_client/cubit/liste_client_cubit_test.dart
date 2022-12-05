
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';


import 'package:fidelity/pages/liste_client/liste_client.dart';

void main() {
  group('Normal Test',() {
    test('Etat initial', () {
      expect(
          ListeClientCubit().state,
        const ListeClientState(),
      );
    });
  });
  group('Bloc Test',() {
    
  });
}
