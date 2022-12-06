import 'package:bloc_test/bloc_test.dart';
import 'package:fidelity/app/bloc/app_bloc.dart';
import 'package:fidelity/pages/liste_client/liste_client.dart';
import 'package:fidelity/repository/utilisateur_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAppBloc extends MockBloc<AppEvent, AppState> implements AppBloc {}

class MockUtilisateurRepository extends Mock implements UtilisateurRepository {}

extension PumpListeClient on WidgetTester {
  Future<void> pumpListeClient({
    required Widget widget,
    required UtilisateurRepository utilisateurRepository,
    required AppBloc appBloc,
  }) {
    return pumpWidget(
      RepositoryProvider(
        create: (context) => utilisateurRepository,
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => appBloc,
            ),
          ],
          child: MaterialApp(
            home: widget,
          ),
        ),
      ),
    );
  }
}

void main() {
  late UtilisateurRepository utilisateurRepository;
  late AppBloc appBloc;

  setUp(() {
    utilisateurRepository = MockUtilisateurRepository();
    appBloc = MockAppBloc();
    when(
      () => appBloc.state,
    ).thenReturn(
      const AppState(),
    );
    when(
      () => utilisateurRepository.listeClients(),
    ).thenAnswer((invocation) => Stream.value([]));
  });

  group('ListeClient Page', () {
    test('Est une page', () {
      expect(ListeClientPage.page(), isA<MaterialPage<dynamic>>());
    });

    testWidgets('ListeClientView intégrer à la page', (tester) async {
      tester.binding.window.physicalSizeTestValue = const Size(3840, 2400);
      await tester.pumpListeClient(
        widget: const ListeClientPage(),
        appBloc: appBloc,
        utilisateurRepository: utilisateurRepository,
      );
      await tester.pumpAndSettle();
      expect(find.byType(ListeClientView), findsOneWidget);
    });
  });
}
