
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';


import 'package:fidelity/pages/infos_client/infos_client.dart';

void main() {
  group('Normal Test',() {
    test('Etat initial', () {
      expect(
          InfosClientCubit().state,
        const InfosClientState(),
      );
    });
  });
  group('Bloc Test',() {
    
  });
}
