import 'package:bloc_test/bloc_test.dart';
import 'package:fidelity/models/champs/champ_texte.dart';
import 'package:fidelity/models/champs/email.dart';
import 'package:fidelity/models/champs/mobile.dart';
import 'package:fidelity/models/utilisateur.dart';
import 'package:fidelity/pages/creer_client/creer_client.dart';
import 'package:fidelity/repository/carte_fidelite_repository.dart';
import 'package:fidelity/repository/utilisateur_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart';
import 'package:mockingjay/mockingjay.dart';
import 'package:mocktail/mocktail.dart';

class MockUtilisateurRepository extends Mock implements UtilisateurRepository {}

class MockUtilisateur extends Mock implements Utilisateur {}

class MockCarteFidelityRepository extends Mock
    implements CarteFideliteRepository {}

class FakeUtilisateur extends Fake implements Utilisateur {}

void main() {
  late UtilisateurRepository utilisateurRepository;
  late CarteFideliteRepository carteFideliteRepository;
  late NavigatorState navigatorState;
  late Utilisateur utilisateur;

  setUpAll(() {
    registerFallbackValue(FakeUtilisateur());
  });

  setUp(() {
    utilisateurRepository = MockUtilisateurRepository();
    carteFideliteRepository = MockCarteFidelityRepository();
    navigatorState = MockNavigator();
    utilisateur = MockUtilisateur();
  });

  group('Normal Test', () {
    test('Etat initial', () {
      expect(
        CreerClientCubit(
          utilisateurRepository: utilisateurRepository,
          navigatorState: navigatorState,
          carteFideliteRepository: carteFideliteRepository,
        ).state,
        const CreerClientState(),
      );
    });
  });
  group('Bloc Test', () {
    blocTest<CreerClientCubit, CreerClientState>(
      'Submit progress/submission faillure',
      setUp: () {},
      build: () => CreerClientCubit(
        utilisateurRepository: utilisateurRepository,
        navigatorState: navigatorState,
        carteFideliteRepository: carteFideliteRepository,
      )..emit(const CreerClientState(status: FormzStatus.valid)),
      act: (bloc) => bloc.submit(),
      expect: () => const [
        CreerClientState(status: FormzStatus.submissionInProgress),
        CreerClientState(status: FormzStatus.submissionFailure),
      ],
    );

    blocTest<CreerClientCubit, CreerClientState>(
      'nom modifié',
      setUp: () {},
      build: () => CreerClientCubit(
        utilisateurRepository: utilisateurRepository,
        navigatorState: navigatorState,
        carteFideliteRepository: carteFideliteRepository,
      ),
      act: (bloc) => bloc.nomModifier(nomTexte: 'Domen'),
      expect: () => const [
        CreerClientState(
          nom: ChampTexte.dirty('Domen'),
          status: FormzStatus.invalid,
        ),
      ],
    );

    blocTest<CreerClientCubit, CreerClientState>(
      'prenom modifié',
      setUp: () {},
      build: () => CreerClientCubit(
        utilisateurRepository: utilisateurRepository,
        navigatorState: navigatorState,
        carteFideliteRepository: carteFideliteRepository,
      ),
      act: (bloc) => bloc.prenomModifier(prenomTexte: 'Dylan'),
      expect: () => const [
        CreerClientState(
          prenom: ChampTexte.dirty('Dylan'),
          status: FormzStatus.invalid,
        ),
      ],
    );

    blocTest<CreerClientCubit, CreerClientState>(
      'mail modifié',
      setUp: () {},
      build: () => CreerClientCubit(
        utilisateurRepository: utilisateurRepository,
        navigatorState: navigatorState,
        carteFideliteRepository: carteFideliteRepository,
      ),
      act: (bloc) => bloc.mailModifier(mailTexte: 'mail@gmail.com'),
      expect: () => const [
        CreerClientState(
          mail: Email.dirty('mail@gmail.com'),
          status: FormzStatus.invalid,
        ),
      ],
    );

    blocTest<CreerClientCubit, CreerClientState>(
      'mobile modifié',
      setUp: () {},
      build: () => CreerClientCubit(
        utilisateurRepository: utilisateurRepository,
        navigatorState: navigatorState,
        carteFideliteRepository: carteFideliteRepository,
      ),
      act: (bloc) => bloc.mobileModifier(mobileTexte: '0692102030'),
      expect: () => const [
        CreerClientState(
          mobile: Mobile.dirty('0692102030'),
          status: FormzStatus.invalid,
        ),
      ],
    );

    blocTest<CreerClientCubit, CreerClientState>(
      'numero carte fidelite modifié',
      setUp: () {},
      build: () => CreerClientCubit(
        utilisateurRepository: utilisateurRepository,
        navigatorState: navigatorState,
        carteFideliteRepository: carteFideliteRepository,
      ),
      act: (bloc) =>
          bloc.numCarteFideliteModifier(numCarteFideliteTexte: 'FArd1542d'),
      expect: () => const [
        CreerClientState(
          numCarteFidelite: ChampTexte.dirty('FArd1542d'),
          status: FormzStatus.invalid,
        ),
      ],
    );

    blocTest<CreerClientCubit, CreerClientState>(
      'fermer',
      setUp: () {},
      build: () => CreerClientCubit(
        utilisateurRepository: utilisateurRepository,
        navigatorState: navigatorState,
        carteFideliteRepository: carteFideliteRepository,
      ),
      act: (bloc) => bloc.fermer(),
      verify: (bloc) {
        verify(
          () => navigatorState.pop(),
        ).called(1);
      },
    );

    blocTest<CreerClientCubit, CreerClientState>(
      'submit echec quand formulaire non valid',
      build: () => CreerClientCubit(
        utilisateurRepository: utilisateurRepository,
        navigatorState: navigatorState,
        carteFideliteRepository: carteFideliteRepository,
      ),
      act: (cubit) => cubit
        ..nomModifier(nomTexte: 'Domen')
        ..prenomModifier(prenomTexte: 'Dylan')
        ..mailModifier(mailTexte: 'mail@gmail.com')
        ..mobileModifier(mobileTexte: '0692102030')
        ..numCarteFideliteModifier(numCarteFideliteTexte: '')
        ..submit(),
      expect: () => [
        const CreerClientState(
          nom: ChampTexte.dirty('Domen'),
          status: FormzStatus.invalid,
        ),
        const CreerClientState(
          nom: ChampTexte.dirty('Domen'),
          prenom: ChampTexte.dirty('Dylan'),
          status: FormzStatus.invalid,
        ),
        const CreerClientState(
          nom: ChampTexte.dirty('Domen'),
          prenom: ChampTexte.dirty('Dylan'),
          mail: Email.dirty('mail@gmail.com'),
          status: FormzStatus.invalid,
        ),
        const CreerClientState(
          nom: ChampTexte.dirty('Domen'),
          prenom: ChampTexte.dirty('Dylan'),
          mail: Email.dirty('mail@gmail.com'),
          mobile: Mobile.dirty('0692102030'),
          status: FormzStatus.invalid,
        ),
        const CreerClientState(
          nom: ChampTexte.dirty('Domen'),
          prenom: ChampTexte.dirty('Dylan'),
          mail: Email.dirty('mail@gmail.com'),
          mobile: Mobile.dirty('0692102030'),
          numCarteFidelite: ChampTexte.dirty(''),
          status: FormzStatus.invalid,
        ),
        const CreerClientState(
          nom: ChampTexte.dirty('Domen'),
          prenom: ChampTexte.dirty('Dylan'),
          mail: Email.dirty('mail@gmail.com'),
          mobile: Mobile.dirty('0692102030'),
          numCarteFidelite: ChampTexte.dirty(''),
          status: FormzStatus.submissionFailure,
        ),
      ],
    );

    blocTest<CreerClientCubit, CreerClientState>(
      'submit réussi',
      setUp: () {
        when(
          () => utilisateurRepository.ajouterUtilisateur(
              utilisateur: any(named: 'utilisateur')),
        ).thenAnswer((invocation) => Future.value(utilisateur));
      },
      build: () => CreerClientCubit(
        utilisateurRepository: utilisateurRepository,
        navigatorState: navigatorState,
        carteFideliteRepository: carteFideliteRepository,
      ),
      act: (cubit) => cubit
        ..nomModifier(nomTexte: 'Domen')
        ..prenomModifier(prenomTexte: 'Dylan')
        ..mailModifier(mailTexte: 'mail@gmail.com')
        ..mobileModifier(mobileTexte: '0692102030')
        ..numCarteFideliteModifier(numCarteFideliteTexte: 'fab553')
        ..submit(),
      expect: () => [
        const CreerClientState(
          nom: ChampTexte.dirty('Domen'),
          status: FormzStatus.invalid,
        ),
        const CreerClientState(
          nom: ChampTexte.dirty('Domen'),
          prenom: ChampTexte.dirty('Dylan'),
          status: FormzStatus.invalid,
        ),
        const CreerClientState(
          nom: ChampTexte.dirty('Domen'),
          prenom: ChampTexte.dirty('Dylan'),
          mail: Email.dirty('mail@gmail.com'),
          status: FormzStatus.invalid,
        ),
        const CreerClientState(
          nom: ChampTexte.dirty('Domen'),
          prenom: ChampTexte.dirty('Dylan'),
          mail: Email.dirty('mail@gmail.com'),
          mobile: Mobile.dirty('0692102030'),
          status: FormzStatus.invalid,
        ),
        const CreerClientState(
          nom: ChampTexte.dirty('Domen'),
          prenom: ChampTexte.dirty('Dylan'),
          mail: Email.dirty('mail@gmail.com'),
          mobile: Mobile.dirty('0692102030'),
          numCarteFidelite: ChampTexte.dirty('fab553'),
          status: FormzStatus.valid,
        ),
        const CreerClientState(
          nom: ChampTexte.dirty('Domen'),
          prenom: ChampTexte.dirty('Dylan'),
          mail: Email.dirty('mail@gmail.com'),
          mobile: Mobile.dirty('0692102030'),
          numCarteFidelite: ChampTexte.dirty('fab553'),
          status: FormzStatus.submissionInProgress,
        ),
        const CreerClientState(
          nom: ChampTexte.dirty('Domen'),
          prenom: ChampTexte.dirty('Dylan'),
          mail: Email.dirty('mail@gmail.com'),
          mobile: Mobile.dirty('0692102030'),
          numCarteFidelite: ChampTexte.dirty('fab553'),
          status: FormzStatus.submissionSuccess,
        ),
      ],
    );
  });
}
