
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart';

import 'package:fidelity/pages/creer_client/creer_client.dart';

void main() {
  group('Normal Test',() {
    test('Etat initial', () {
      expect(
          CreerClientCubit().state,
        const CreerClientState(),
      );
    });
  });
  group('Bloc Test',() {
    
    blocTest<CreerClientCubit, CreerClientState>(
      'Submit progress/success',
      setUp: () {},
      build: () =>
          CreerClientCubit()..emit(const CreerClientState(status: FormzStatus.valid)),
      act: (bloc) => bloc.submit(),
      expect: () => const [
        CreerClientState(status: FormzStatus.submissionInProgress),
        CreerClientState(status: FormzStatus.submissionSuccess),
      ],
    );
    
  });
}
