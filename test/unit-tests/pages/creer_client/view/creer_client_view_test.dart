import 'package:bloc_test/bloc_test.dart';
import 'package:fidelity/pages/creer_client/creer_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockCreerClientCubit extends MockCubit<CreerClientState>
    implements CreerClientCubit {}

extension PumpCreerClient on WidgetTester {
  Future<void> pumpCreerClient({
    required Widget widget,
    required CreerClientCubit creerClientCubit,
  }) {
    return pumpWidget(
      BlocProvider(
        create: (context) => creerClientCubit,
        child: MaterialApp(
          home: Scaffold(body: widget),
        ),
      ),
    );
  }
}

void main() {
  late CreerClientCubit creerClientCubit;
  setUp(() {
    creerClientCubit = MockCreerClientCubit();
    when(
      () => creerClientCubit.state,
    ).thenReturn(const CreerClientState());
  });
  group('CreerClient Page', () {
    testWidgets('WillPopScope présent', (tester) async {
      await tester.pumpCreerClient(
        widget: const CreerClientView(),
        creerClientCubit: creerClientCubit,
      );
      await tester.pumpAndSettle();
      expect(find.byType(WillPopScope), findsOneWidget);
    });
    testWidgets('Retour retourne true', (tester) async {
      await tester.pumpCreerClient(
        widget: const CreerClientView(),
        creerClientCubit: creerClientCubit,
      );
      await tester.pumpAndSettle();
      final dynamic widgetsAppState = tester.state(find.byType(WidgetsApp));
      expect(await widgetsAppState.didPopRoute(), isFalse);
    });

    testWidgets('onChanged nom', (tester) async {
      await tester.pumpCreerClient(
        widget: const CreerClientView(),
        creerClientCubit: creerClientCubit,
      );
      await tester.pumpAndSettle();
      await tester.enterText(find.byKey(const Key('TextFieldNom')), 'test');
      verify(() => creerClientCubit.nomModifier(nomTexte: 'test')).called(1);
    });

    testWidgets('onChanged prenom', (tester) async {
      await tester.pumpCreerClient(
        widget: const CreerClientView(),
        creerClientCubit: creerClientCubit,
      );
      await tester.pumpAndSettle();
      await tester.enterText(find.byKey(const Key('TextFieldPrenom')), 'test');
      verify(() => creerClientCubit.prenomModifier(prenomTexte: 'test'))
          .called(1);
    });

    testWidgets('onChanged mail', (tester) async {
      await tester.pumpCreerClient(
        widget: const CreerClientView(),
        creerClientCubit: creerClientCubit,
      );
      await tester.pumpAndSettle();
      await tester.enterText(
          find.byKey(const Key('TextFieldMail')), 'mail@gmail.com');
      verify(() => creerClientCubit.mailModifier(mailTexte: 'mail@gmail.com'))
          .called(1);
    });

    testWidgets('onChanged mobile', (tester) async {
      await tester.pumpCreerClient(
        widget: const CreerClientView(),
        creerClientCubit: creerClientCubit,
      );
      await tester.pumpAndSettle();
      await tester.enterText(
          find.byKey(const Key('TextFieldMobile')), '0692151515');
      verify(() => creerClientCubit.mobileModifier(mobileTexte: '0692151515'))
          .called(1);
    });

    testWidgets('onChanged numero carte fidelite', (tester) async {
      await tester.pumpCreerClient(
        widget: const CreerClientView(),
        creerClientCubit: creerClientCubit,
      );
      await tester.pumpAndSettle();
      await tester.enterText(
          find.byKey(const Key('TextFieldNumeroCarte')), 'Fabd65sf541');
      verify(() => creerClientCubit.numCarteFideliteModifier(
          numCarteFideliteTexte: 'Fabd65sf541')).called(1);
    });

    testWidgets('Clique sur annuler', (tester) async {
      await tester.binding.setSurfaceSize(const Size(1800, 720));
      await tester.pumpCreerClient(
        widget: const CreerClientView(),
        creerClientCubit: creerClientCubit,
      );
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const Key('BtnAnnuler')));
      await tester.pumpAndSettle();
      verify(
        () => creerClientCubit.fermer(),
      ).called(1);
    });

    testWidgets('Clique sur valider', (tester) async {
      when(
            () => creerClientCubit.submit(),
      ).thenAnswer((invocation) => Future.value());
      await tester.binding.setSurfaceSize(const Size(1800, 720));
      await tester.pumpCreerClient(
        widget: const CreerClientView(),
        creerClientCubit: creerClientCubit,
      );
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const Key('BtnValider')));
      await tester.pumpAndSettle();
      verify(
        () => creerClientCubit.submit(),
      ).called(1);
    });
  });
}
