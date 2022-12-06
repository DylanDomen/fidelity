import 'package:bloc_test/bloc_test.dart';
import 'package:fidelity/app/bloc/app_bloc.dart';
import 'package:fidelity/pages/connexion/connexion.dart';
import 'package:fidelity/repository/authentification_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAppBloc extends MockBloc<AppEvent, AppState> implements AppBloc {}

class MockAuthentificationRepository extends Mock
    implements AuthentificationRepository {}

extension PumpConnexion on WidgetTester {
  Future<void> pumpConnexion({
    required Widget widget,
    required AppBloc appBloc,
    required AuthentificationRepository authentificationRepository,
  }) {
    return pumpWidget(
      BlocProvider(
        create: (context) => ConnexionCubit(
          appBloc: appBloc,
          authentificationRepository: authentificationRepository,
        ),
        child: MaterialApp(
          home: widget,
        ),
      ),
    );
  }
}

void main() {
  late AuthentificationRepository authentificationRepository;
  late AppBloc appBloc;
  setUp(() {
    authentificationRepository = MockAuthentificationRepository();
    appBloc = MockAppBloc();
  });
  group('Connexion Page', () {
    test('Est une page', () {
      expect(ConnexionPage.page(), isA<MaterialPage<dynamic>>());
    });

    testWidgets('ConnexionView intégrer à la page', (tester) async {
      tester.binding.window.physicalSizeTestValue = const Size(3840, 2400);
      await tester.pumpConnexion(
        widget: const ConnexionPage(),
        appBloc: appBloc,
        authentificationRepository: authentificationRepository,
      );
      await tester.pumpAndSettle();
      expect(find.byType(ConnexionView), findsOneWidget);
    });
  });
}
