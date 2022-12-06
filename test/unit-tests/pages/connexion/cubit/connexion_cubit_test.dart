import 'package:bloc_test/bloc_test.dart';
import 'package:fidelity/app/bloc/app_bloc.dart';
import 'package:fidelity/pages/connexion/connexion.dart';
import 'package:fidelity/repository/authentification_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart';
import 'package:mocktail/mocktail.dart';

class MockAppBloc extends MockBloc<AppEvent, AppState> implements AppBloc {}

class MockAuthentificationRepository extends Mock
    implements AuthentificationRepository {}

void main() {
  late AuthentificationRepository authentificationRepository;
  late AppBloc appBloc;
  setUp(() {
    authentificationRepository = MockAuthentificationRepository();
    appBloc = MockAppBloc();
  });
  group('Normal Test', () {
    test('Etat initial', () {
      expect(
        ConnexionCubit(
          authentificationRepository: authentificationRepository,
          appBloc: appBloc,
        ).state,
        const ConnexionState(),
      );
    });
  });
  group('Bloc Test', () {
    blocTest<ConnexionCubit, ConnexionState>(
      'Submit progress/success',
      setUp: () {},
      build: () => ConnexionCubit(
        authentificationRepository: authentificationRepository,
        appBloc: appBloc,
      )..emit(const ConnexionState(status: FormzStatus.valid)),
      act: (bloc) => bloc.submit(),
      expect: () => const [
        ConnexionState(status: FormzStatus.submissionInProgress),
        ConnexionState(status: FormzStatus.submissionSuccess),
      ],
    );
  });
}
