import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:fidelity/models/role.dart';
import 'package:fidelity/models/utilisateur.dart';
import 'package:fidelity/repository/authentification_repository.dart';
import 'package:fidelity/repository/utilisateur_repository.dart';
import 'package:firedart/firedart.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockFirestore extends Mock implements Firestore {}

class MockDocument extends Mock implements Document {}

class MockDocumentReference extends Mock implements DocumentReference {}

class MockCollectionReference extends Mock implements CollectionReference {}

class MockAuthentificationRepository extends Mock
    implements AuthentificationRepository {}

class MockUser extends Mock implements UserEquatable {}

void main() {
  late Utilisateur utilisateur;
  late UtilisateurRepository utilisateurRepository;
  late FakeFirebaseFirestore fakeFirebaseFirestore;
  late Firestore firestore;
  late Document document;
  late Document document2;
  late DocumentReference documentReference;
  late CollectionReference collectionReference;
  late AuthentificationRepository authentificationRepository;
  late UserEquatable user;

  setUp(() async {
    firestore = MockFirestore();
    document = MockDocument();
    document2 = MockDocument();
    documentReference = MockDocumentReference();
    collectionReference = MockCollectionReference();
    authentificationRepository = MockAuthentificationRepository();
    user = MockUser();

    utilisateur = const Utilisateur(
      uidUtilisateur: 'uid',
      nom: 'OAvg5',
      role: Role.client,
      mobile: '9P9iE',
      mail: 'NkpfF',
      prenom: 'r1SjZ',
    );
    fakeFirebaseFirestore = FakeFirebaseFirestore();
    utilisateurRepository = UtilisateurRepository(
      firestore: firestore,
      authentificationRepository: authentificationRepository,
    );

    when(
      () => firestore.collection('utilisateurs'),
    ).thenReturn(collectionReference);
    when(
      () => collectionReference.add(utilisateur.toJson()),
    ).thenAnswer((invocation) => Future.value(document));
    when(
      () => document.id,
    ).thenReturn('uid');
    when(
      () => document2.id,
    ).thenReturn('uid2');
    when(
      () => collectionReference.document('uid'),
    ).thenReturn(documentReference);
    when(
      () => documentReference.set(
        utilisateur.copywith(nom: 'nomModifié').toJson(),
      ),
    ).thenAnswer((invocation) => Future.value());
    when(
      () => documentReference.delete(),
    ).thenAnswer((invocation) => Future.value());
    when(
      () => documentReference.stream,
    ).thenAnswer((invocation) => Stream.value(document));
    when(
      () => collectionReference.stream,
    ).thenAnswer((invocation) => Stream.value([document, document2]));
    when(
      () => document.map,
    ).thenReturn(utilisateur.copywith(uidUtilisateur: 'uid').toJson());
    when(
      () => document2.map,
    ).thenReturn(utilisateur
        .copywith(uidUtilisateur: 'uid2', role: Role.caissier)
        .toJson());
    when(
      () => authentificationRepository.inscriptionAvecEmailEtMotDePasse(
          email: any(named: 'email'), password: any(named: 'password')),
    ).thenAnswer((invocation) => Future.value(user));
    when(
      () => user.id,
    ).thenReturn('uid');
  });

  test('Ajouter utilisateur', () async {
    final utilisateurRef = await utilisateurRepository.ajouterUtilisateur(
      utilisateur: utilisateur,
    );
    expect(utilisateurRef, isA<Utilisateur>());
    expect(utilisateurRef.uidUtilisateur, 'uid');
  });

  test('Modifier utilisateur', () async {
    final utilisateurModifier = utilisateur.copywith(nom: 'nomModifié');
    await utilisateurRepository.modifierUtilisateur(
      utilisateur: utilisateurModifier,
    );
    verify(
      () => documentReference.set(
        utilisateur.copywith(nom: 'nomModifié').toJson(),
      ),
    ).called(1);
  });

  test('retourne utilisateur doc reference', () async {
    final utilisateurDocumentRef =
        utilisateurRepository.retourneUtilisateurDocReference(
      utilisateur: utilisateur,
    );
    expect(utilisateurDocumentRef, isA<DocumentReference>());
    verify(
      () => collectionReference.document('uid'),
    ).called(1);
  });

  test('Supprimer utilisateur', () async {
    await utilisateurRepository.supprimerUtilisateur(uidUtilisateur: 'uid');
    verify(
      () => documentReference.delete(),
    ).called(1);
  });

  test('Selectionne utilisateur', () async {
    final streamUtilisateur =
        utilisateurRepository.selectionneUtilisateur(uidUtilisateur: 'uid');
    expect(streamUtilisateur, emits(utilisateur));
  });

  test('Selectionne utilisateur mais id vide', () async {
    final streamAchat =
        utilisateurRepository.selectionneUtilisateur(uidUtilisateur: '');
    expect(streamAchat, emitsDone);
    verifyNever(
      () => documentReference.stream,
    );
  });

  test('liste utilisateur', () async {
    final utilisateur1 = utilisateur.copywith(uidUtilisateur: 'uid');
    final utilisateur2 =
        utilisateur.copywith(uidUtilisateur: 'uid2', role: Role.caissier);
    final streamListeUtilisateurs = utilisateurRepository.listeUtilisateur();
    expect(
      streamListeUtilisateurs,
      emits(
        [utilisateur1, utilisateur2],
      ),
    );
    verify(
      () => collectionReference.stream,
    ).called(1);
  });

  test('liste clients', () async {
    final utilisateur1 = utilisateur.copywith(uidUtilisateur: 'uid');
    final utilisateur2 = utilisateur.copywith(uidUtilisateur: 'uid2');
    final streamListeUtilisateurs = utilisateurRepository.listeClients();
    expect(
      streamListeUtilisateurs,
      emits(
        [utilisateur1],
      ),
    );
    verify(
      () => collectionReference.stream,
    ).called(1);
  });
}
