
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart';

import 'package:fidelity/pages/connexion/connexion.dart';

void main() {
  group('Normal Test',() {
    test('Etat initial', () {
      expect(
          ConnexionCubit().state,
        const ConnexionState(),
      );
    });
  });
  group('Bloc Test',() {
    
    blocTest<ConnexionCubit, ConnexionState>(
      'Submit progress/success',
      setUp: () {},
      build: () =>
          ConnexionCubit()..emit(const ConnexionState(status: FormzStatus.valid)),
      act: (bloc) => bloc.submit(),
      expect: () => const [
        ConnexionState(status: FormzStatus.submissionInProgress),
        ConnexionState(status: FormzStatus.submissionSuccess),
      ],
    );
    
  });
}
