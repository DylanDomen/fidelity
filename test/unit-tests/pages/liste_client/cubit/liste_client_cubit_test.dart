import 'package:bloc_test/bloc_test.dart';
import 'package:fidelity/app/bloc/app_bloc.dart';
import 'package:fidelity/models/champs/champ_texte.dart';
import 'package:fidelity/models/champs/email.dart';
import 'package:fidelity/models/champs/mobile.dart';
import 'package:fidelity/models/role.dart';
import 'package:fidelity/models/utilisateur.dart';
import 'package:fidelity/pages/liste_client/liste_client.dart';
import 'package:fidelity/repository/utilisateur_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockUtilisateurRepository extends Mock implements UtilisateurRepository {}

class MockAppBloc extends MockBloc<AppEvent, AppState> implements AppBloc {}

void main() {
  late Utilisateur utilisateur;
  late Utilisateur utilisateur2;
  late List<Utilisateur> listeClients;
  late UtilisateurRepository utilisateurRepository;
  late AppBloc appBloc;

  setUp(() {
    utilisateur = const Utilisateur(
      uidUtilisateur: 'uidUtilisateur',
      nom: 'nom',
      role: Role.client,
      mobile: '0692102030',
      mail: 'mail@gmail.com',
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
    appBloc = MockAppBloc();
    listeClients = [utilisateur, utilisateur2];

    utilisateurRepository = MockUtilisateurRepository();

    when(
      () => utilisateurRepository.listeClients(),
    ).thenAnswer((invocation) => Stream.value([]));

    when(
      () => appBloc.state,
    ).thenReturn(
      const AppState(),
    );
    when(
      () => utilisateurRepository.supprimerUtilisateur(
          uidUtilisateur: utilisateur.uidUtilisateur!),
    ).thenAnswer((invocation) => Future.value());
  });

  group('Normal Test', () {
    test('Etat initial', () {
      expect(
        ListeClientCubit(
          utilisateurRepository: utilisateurRepository,
          appBloc: appBloc,
        ).state,
        const ListeClientState(),
      );
    });
  });

  group('Bloc Test', () {
    blocTest<ListeClientCubit, ListeClientState>(
      'filtre Clients vide et liste client vide',
      setUp: () {},
      build: () => ListeClientCubit(
        utilisateurRepository: utilisateurRepository,
        appBloc: appBloc,
      ),
      act: (bloc) => bloc.filtreClients(),
      expect: () => [
        const ListeClientState(),
      ],
    );

    blocTest<ListeClientCubit, ListeClientState>(
      'filtre Clients vide avec 2 clients dans la base',
      setUp: () {
        when(
          () => utilisateurRepository.listeClients(),
        ).thenAnswer((invocation) => Stream.value(listeClients));
      },
      build: () => ListeClientCubit(
        utilisateurRepository: utilisateurRepository,
        appBloc: appBloc,
      )..emit(
          ListeClientState(
            listeClients: listeClients,
          ),
        ),
      act: (bloc) => bloc.filtreClients(),
      expect: () => [
        ListeClientState(
          listeClientsFiltre: listeClients,
          listeClients: listeClients,
        ),
      ],
    );

    blocTest<ListeClientCubit, ListeClientState>(
      'filtre Clients sur nom = no avec 2 clients dans la base',
      setUp: () {
        when(
          () => utilisateurRepository.listeClients(),
        ).thenAnswer((invocation) => Stream.value(listeClients));
      },
      build: () => ListeClientCubit(
        utilisateurRepository: utilisateurRepository,
        appBloc: appBloc,
      )..emit(
          ListeClientState(
            listeClients: listeClients,
          ),
        ),
      act: (bloc) => bloc.nomModifier(nomTexte: 'no'),
      expect: () => [
        ListeClientState(
          listeClients: listeClients,
          nom: const ChampTexte.dirty('no'),
        ),
        ListeClientState(
          listeClientsFiltre: [utilisateur],
          listeClients: listeClients,
          nom: const ChampTexte.dirty('no'),
        ),
      ],
    );

    blocTest<ListeClientCubit, ListeClientState>(
      'filtre Clients sur nom = vide avec 2 clients dans la base',
      setUp: () {
        when(
          () => utilisateurRepository.listeClients(),
        ).thenAnswer((invocation) => Stream.value(listeClients));
      },
      build: () => ListeClientCubit(
        utilisateurRepository: utilisateurRepository,
        appBloc: appBloc,
      )..emit(
          ListeClientState(
            listeClients: listeClients,
          ),
        ),
      act: (bloc) => bloc.nomModifier(nomTexte: ''),
      expect: () => [
        ListeClientState(
          listeClients: listeClients,
          nom: const ChampTexte.dirty(),
        ),
        ListeClientState(
          listeClientsFiltre: [utilisateur, utilisateur2],
          listeClients: listeClients,
          nom: const ChampTexte.dirty(),
        ),
      ],
    );

    blocTest<ListeClientCubit, ListeClientState>(
      'filtre Clients sur mobile = 069210 avec 2 clients dans la base',
      setUp: () {
        when(
          () => utilisateurRepository.listeClients(),
        ).thenAnswer((invocation) => Stream.value(listeClients));
      },
      build: () => ListeClientCubit(
        utilisateurRepository: utilisateurRepository,
        appBloc: appBloc,
      )..emit(
          ListeClientState(
            listeClients: listeClients,
          ),
        ),
      act: (bloc) => bloc.mobileModifier(mobileTexte: '069210'),
      expect: () => [
        ListeClientState(
          listeClients: listeClients,
          mobile: const Mobile.dirty('069210'),
        ),
        ListeClientState(
          listeClientsFiltre: [utilisateur],
          listeClients: listeClients,
          mobile: const Mobile.dirty('069210'),
        ),
      ],
    );

    blocTest<ListeClientCubit, ListeClientState>(
      'filtre Clients sur mobile = vide avec 2 clients dans la base',
      setUp: () {
        when(
          () => utilisateurRepository.listeClients(),
        ).thenAnswer((invocation) => Stream.value(listeClients));
      },
      build: () => ListeClientCubit(
        utilisateurRepository: utilisateurRepository,
        appBloc: appBloc,
      )..emit(
          ListeClientState(
            listeClients: listeClients,
          ),
        ),
      act: (bloc) => bloc.mobileModifier(mobileTexte: ''),
      expect: () => [
        ListeClientState(
          listeClients: listeClients,
          mobile: const Mobile.dirty(),
        ),
        ListeClientState(
          listeClientsFiltre: [utilisateur, utilisateur2],
          listeClients: listeClients,
          mobile: const Mobile.dirty(),
        ),
      ],
    );

    blocTest<ListeClientCubit, ListeClientState>(
      'filtre Clients sur mail = mail@ avec 2 clients dans la base',
      setUp: () {
        when(
          () => utilisateurRepository.listeClients(),
        ).thenAnswer((invocation) => Stream.value(listeClients));
      },
      build: () => ListeClientCubit(
        utilisateurRepository: utilisateurRepository,
        appBloc: appBloc,
      )..emit(
          ListeClientState(
            listeClients: listeClients,
          ),
        ),
      act: (bloc) => bloc.mailModifier(mailTexte: 'mail@'),
      expect: () => [
        ListeClientState(
          listeClients: listeClients,
          mail: const Email.dirty('mail@'),
        ),
        ListeClientState(
          listeClientsFiltre: [utilisateur],
          listeClients: listeClients,
          mail: const Email.dirty('mail@'),
        ),
      ],
    );

    blocTest<ListeClientCubit, ListeClientState>(
      'filtre Clients sur mail = vide avec 2 clients dans la base',
      setUp: () {
        when(
          () => utilisateurRepository.listeClients(),
        ).thenAnswer((invocation) => Stream.value(listeClients));
      },
      build: () => ListeClientCubit(
        utilisateurRepository: utilisateurRepository,
        appBloc: appBloc,
      )..emit(
          ListeClientState(
            listeClients: listeClients,
          ),
        ),
      act: (bloc) => bloc.mailModifier(mailTexte: ''),
      expect: () => [
        ListeClientState(
          listeClients: listeClients,
          mail: const Email.dirty(),
        ),
        ListeClientState(
          listeClientsFiltre: [utilisateur, utilisateur2],
          listeClients: listeClients,
          mail: const Email.dirty(),
        ),
      ],
    );

    blocTest<ListeClientCubit, ListeClientState>(
      'Selectionne client',
      build: () => ListeClientCubit(
        utilisateurRepository: utilisateurRepository,
        appBloc: appBloc,
      )..emit(
          ListeClientState(
            listeClients: listeClients,
          ),
        ),
      act: (bloc) => bloc.selectionneClient(utilisateur: utilisateur),
      verify: (bloc) {
        verify(
          () => appBloc.add(RedirectionInfosClient(utilisateur: utilisateur)),
        ).called(1);
      },
    );

    blocTest<ListeClientCubit, ListeClientState>(
      'Supprimer client',
      build: () => ListeClientCubit(
        utilisateurRepository: utilisateurRepository,
        appBloc: appBloc,
      )..emit(
          ListeClientState(
            listeClients: listeClients,
          ),
        ),
      act: (bloc) => bloc.supprimerClient(utilisateur: utilisateur),
      verify: (bloc) {
        verify(
          () => utilisateurRepository.supprimerUtilisateur(
              uidUtilisateur: utilisateur.uidUtilisateur!),
        ).called(1);
      },
    );

    blocTest<ListeClientCubit, ListeClientState>(
      'decconexion',
      build: () => ListeClientCubit(
        utilisateurRepository: utilisateurRepository,
        appBloc: appBloc,
      )..emit(
          ListeClientState(
            listeClients: listeClients,
          ),
        ),
      act: (bloc) => bloc.deconnexion(),
      verify: (bloc) {
        verify(
          () => appBloc.add(const Connexion()),
        ).called(1);
      },
    );
  });
}
