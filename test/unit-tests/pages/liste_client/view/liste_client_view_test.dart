import 'package:bloc_test/bloc_test.dart';
import 'package:fidelity/app/bloc/app_bloc.dart';
import 'package:fidelity/models/role.dart';
import 'package:fidelity/models/utilisateur.dart';
import 'package:fidelity/pages/creer_client/view/creer_client_page.dart';
import 'package:fidelity/pages/liste_client/liste_client.dart';
import 'package:fidelity/repository/utilisateur_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockListeClientCubit extends MockCubit<ListeClientState>
    implements ListeClientCubit {}

class MockUtilisateur extends Mock implements Utilisateur {}

class MockAppBloc extends MockBloc<AppEvent, AppState> implements AppBloc {}

class MockUtilisateurRepository extends Mock implements UtilisateurRepository {}

extension PumpListeClient on WidgetTester {
  Future<void> pumpListeClient({
    required Widget widget,
    required ListeClientCubit listeClientCubit,
    required AppBloc appBloc,
    required UtilisateurRepository utilisateurRepository,
  }) {
    return pumpWidget(
      RepositoryProvider(
        create: (context) => utilisateurRepository,
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => appBloc,
            ),
            BlocProvider(
              create: (context) => listeClientCubit,
            ),
          ],
          child: MaterialApp(
            home: Scaffold(body: widget),
          ),
        ),
      ),
    );
  }
}

void main() {
  late Utilisateur utilisateur;
  late Utilisateur utilisateur2;
  late List<Utilisateur> listeClients;
  late AppBloc appBloc;
  late UtilisateurRepository utilisateurRepository;

  late ListeClientCubit listeClientCubit;
  setUp(() {
    utilisateur = const Utilisateur(
      uidUtilisateur: 'uidUtilisateur',
      nom: 'nom',
      role: Role.client,
      mobile: '0692102030',
      mail: 'mai@gmail.com',
      prenom: 'prenom',
    );
    utilisateur2 = const Utilisateur(
      uidUtilisateur: 'uidUtilisateur2',
      nom: 'max',
      role: Role.client,
      mobile: '0692505050',
      mail: 'mon@gmail.com',
      prenom: 'min',
    );
    listeClients = [utilisateur, utilisateur2];
    appBloc = MockAppBloc();
    listeClientCubit = MockListeClientCubit();
    utilisateurRepository = MockUtilisateurRepository();
    when(
      () => listeClientCubit.state,
    ).thenReturn(const ListeClientState());
    when(
      () => appBloc.state,
    ).thenReturn(
      const AppState(),
    );
  });
  group('ListeClient Page', () {
    testWidgets('WillPopScope présent', (tester) async {
      await tester.pumpListeClient(
        widget: const ListeClientView(),
        listeClientCubit: listeClientCubit,
        appBloc: appBloc,
        utilisateurRepository: utilisateurRepository,
      );
      await tester.pumpAndSettle();
      expect(find.byType(WillPopScope), findsOneWidget);
    });
    testWidgets('Retour retourne true', (tester) async {
      await tester.pumpListeClient(
        widget: const ListeClientView(),
        listeClientCubit: listeClientCubit,
        appBloc: appBloc,
        utilisateurRepository: utilisateurRepository,
      );
      await tester.pumpAndSettle();
      final dynamic widgetsAppState = tester.state(find.byType(WidgetsApp));
      expect(await widgetsAppState.didPopRoute(), isFalse);
    });

    testWidgets('onChanged nom', (tester) async {
      await tester.pumpListeClient(
        widget: const ListeClientView(),
        listeClientCubit: listeClientCubit,
        appBloc: appBloc,
        utilisateurRepository: utilisateurRepository,
      );
      await tester.pumpAndSettle();
      await tester.enterText(find.byKey(const Key('TextFieldNom')), 'test');
      verify(() => listeClientCubit.nomModifier(nomTexte: 'test')).called(1);
    });

    testWidgets('onChanged mail', (tester) async {
      await tester.pumpListeClient(
        widget: const ListeClientView(),
        listeClientCubit: listeClientCubit,
        appBloc: appBloc,
        utilisateurRepository: utilisateurRepository,
      );
      await tester.pumpAndSettle();
      await tester.enterText(
          find.byKey(const Key('TextFieldMail')), 'mail@gmail.com');
      verify(() => listeClientCubit.mailModifier(mailTexte: 'mail@gmail.com'))
          .called(1);
    });

    testWidgets('onChanged mobile', (tester) async {
      await tester.pumpListeClient(
        widget: const ListeClientView(),
        listeClientCubit: listeClientCubit,
        appBloc: appBloc,
        utilisateurRepository: utilisateurRepository,
      );
      await tester.pumpAndSettle();
      await tester.enterText(
          find.byKey(const Key('TextFieldMobile')), '0692151515');
      verify(() => listeClientCubit.mobileModifier(mobileTexte: '0692151515'))
          .called(1);
    });

    testWidgets('affichage de la liste', (tester) async {
      when(
        () => listeClientCubit.state,
      ).thenReturn(ListeClientState(listeClientsFiltre: listeClients));
      await tester.binding.setSurfaceSize(const Size(1800, 720));
      await tester.pumpListeClient(
        widget: const ListeClientView(),
        listeClientCubit: listeClientCubit,
        appBloc: appBloc,
        utilisateurRepository: utilisateurRepository,
      );
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('ContainerClient')), findsNWidgets(2));
      expect(find.text('${utilisateur.nom} ${utilisateur.prenom}'),
          findsOneWidget);
      expect(find.text('${utilisateur2.nom} ${utilisateur2.prenom}'),
          findsOneWidget);
      expect(find.text(utilisateur.mobile), findsOneWidget);
      expect(find.text(utilisateur2.mobile), findsOneWidget);
      expect(find.text(utilisateur.mail), findsOneWidget);
      expect(find.text(utilisateur2.mail), findsOneWidget);
    });

    testWidgets('Clique sur ligne client', (tester) async {
      when(
        () => listeClientCubit.state,
      ).thenReturn(ListeClientState(listeClientsFiltre: listeClients));
      await tester.binding.setSurfaceSize(const Size(1800, 720));
      await tester.pumpListeClient(
        widget: const ListeClientView(),
        listeClientCubit: listeClientCubit,
        appBloc: appBloc,
        utilisateurRepository: utilisateurRepository,
      );
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const Key('InkwellLigneClient')).first);
      await tester.pumpAndSettle();
      verify(
        () => listeClientCubit.selectionneClient(
          utilisateur: utilisateur,
        ),
      ).called(1);
    });

    testWidgets('Clique sur supprimer client ', (tester) async {
      when(
        () => listeClientCubit.state,
      ).thenReturn(ListeClientState(listeClientsFiltre: listeClients));
      await tester.binding.setSurfaceSize(const Size(1800, 720));
      await tester.pumpListeClient(
        widget: const ListeClientView(),
        listeClientCubit: listeClientCubit,
        appBloc: appBloc,
        utilisateurRepository: utilisateurRepository,
      );
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const Key('BtnSupprimerClient')).first);
      await tester.pumpAndSettle();
      verify(
        () => listeClientCubit.supprimerClient(
          utilisateur: utilisateur,
        ),
      ).called(1);
    });

    testWidgets('Clique sur deconnexion', (tester) async {
      when(
        () => listeClientCubit.state,
      ).thenReturn(ListeClientState(listeClientsFiltre: listeClients));
      await tester.binding.setSurfaceSize(const Size(1800, 720));
      await tester.pumpListeClient(
        widget: const ListeClientView(),
        listeClientCubit: listeClientCubit,
        appBloc: appBloc,
        utilisateurRepository: utilisateurRepository,
      );
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const Key('BtnDeconnexion')));
      await tester.pumpAndSettle();
      verify(
        () => listeClientCubit.deconnexion(),
      ).called(1);
    });

    testWidgets('Clique sur ajout client', (tester) async {
      when(
        () => listeClientCubit.state,
      ).thenReturn(ListeClientState(listeClientsFiltre: listeClients));
      await tester.binding.setSurfaceSize(const Size(1800, 720));
      await tester.pumpListeClient(
        widget: const ListeClientView(),
        listeClientCubit: listeClientCubit,
        appBloc: appBloc,
        utilisateurRepository: utilisateurRepository,
      );
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('ColumnListeVide')), findsNothing);
      expect(find.byKey(const Key('ContainerClient')), findsNWidgets(2));
      await tester.tap(find.byKey(const Key('InkwellAjoutClient')));
      await tester.pumpAndSettle();
      expect(find.byType(CreerClientPage), findsOneWidget);
    });
  });
}
