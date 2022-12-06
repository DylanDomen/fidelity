import 'package:fidelity/pages/creer_client/creer_client.dart';
import 'package:fidelity/repository/utilisateur_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockUtilisateurRepository extends Mock implements UtilisateurRepository {}

extension PumpCreerClient on WidgetTester {
  Future<void> pumpCreerClient({
    required Widget widget,
    required UtilisateurRepository utilisateurRepository,
  }) {
    return pumpWidget(
      RepositoryProvider(
        create: (context) => utilisateurRepository,
        child: MaterialApp(
          home: widget,
        ),
      ),
    );
  }
}

void main() {
  late UtilisateurRepository utilisateurRepository;
  setUp(() {
    utilisateurRepository = MockUtilisateurRepository();
  });
  group('CreerClient Page', () {
    test('Est une page', () {
      expect(CreerClientPage.page(), isA<MaterialPage<dynamic>>());
    });

    testWidgets('CreerClientView intégrer à la page', (tester) async {
      tester.binding.window.physicalSizeTestValue = const Size(3840, 2400);
      await tester.pumpCreerClient(
        widget: const CreerClientPage(),
        utilisateurRepository: utilisateurRepository,
      );
      await tester.pumpAndSettle();
      expect(find.byType(CreerClientView), findsOneWidget);
    });
  });
}
