import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:fidelity/models/achat.dart';
import 'package:fidelity/models/magasin.dart';
import 'package:fidelity/repository/achat_repository.dart';
import 'package:firedart/firestore/firestore.dart';
import 'package:firedart/firestore/models.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockFirestore extends Mock implements Firestore {}

class MockDocument extends Mock implements Document {}

class MockDocumentReference extends Mock implements DocumentReference {}

class MockCollectionReference extends Mock implements CollectionReference {}

void main() {
  late Achat achat;
  late AchatRepository achatRepository;
  late FakeFirebaseFirestore fakeFirebaseFirestore;
  late Firestore firestore;
  late Document document;
  late Document document2;
  late DocumentReference documentReference;
  late CollectionReference collectionReference;

  setUp(() async {
    firestore = MockFirestore();
    document = MockDocument();
    document2 = MockDocument();
    documentReference = MockDocumentReference();
    collectionReference = MockCollectionReference();

    achat = Achat(
      uidAchat: 'uid',
      montantInitial: 50,
      montantFinal: 50,
      uidUtilisateur: 'CzYdm',
      magasin: Magasin.values.first,
      nombrePointsPerdu: 0,
      nombrePointsGagne: 5,
    );
    fakeFirebaseFirestore = FakeFirebaseFirestore();
    achatRepository = AchatRepository(
      firestore: firestore,
    );
    when(
      () => firestore.collection('achats'),
    ).thenReturn(collectionReference);
    when(
      () => collectionReference.add(achat.toJson()),
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
        achat
            .copywith(
              montantFinal: 70,
              montantInitial: 70,
              nombrePointsGagne: 7,
              uidAchat: 'uid',
            )
            .toJson(),
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
    ).thenReturn(achat.copywith(uidAchat: 'uid').toJson());
    when(
      () => document2.map,
    ).thenReturn(achat.copywith(uidAchat: 'uid2').toJson());
  });
  test('creer achat', () async {
    final achatRef = await achatRepository.creerAchat(
      achat: achat,
    );
    expect(achatRef, isA<Achat>());
    expect(achatRef.uidAchat, 'uid');
  });

  test('Modifier achat', () async {
    final achatModifier = achat.copywith(
      montantFinal: 70,
      montantInitial: 70,
      nombrePointsGagne: 7,
      uidAchat: 'uid',
    );
    await achatRepository.modifierAchat(
      achat: achatModifier,
    );
    verify(
      () => documentReference.set(
        achat
            .copywith(
              montantFinal: 70,
              montantInitial: 70,
              nombrePointsGagne: 7,
              uidAchat: 'uid',
            )
            .toJson(),
      ),
    ).called(1);
  });

  test('retourne achat doc reference', () async {
    final achatDocumentRef = achatRepository.retourneAchatDocReference(
      achat: achat,
    );
    expect(achatDocumentRef, isA<DocumentReference>());
    verify(
      () => collectionReference.document('uid'),
    ).called(1);
  });

  test('Supprimer achat', () async {
    await achatRepository.supprimerAchat(uidAchat: 'uid');
    verify(
      () => documentReference.delete(),
    ).called(1);
  });

  test('Selectionne achat', () async {
    final streamAchat = achatRepository.selectionneAchat(uidAchat: 'uid');
    expect(streamAchat, emits(achat));
  });

  test('Selectionne achat mais id vide', () async {
    final streamAchat = await achatRepository.selectionneAchat(uidAchat: '');
    expect(streamAchat, emitsDone);
    verifyNever(
      () => documentReference.stream,
    );
  });

  test('liste achats client', () async {
    final achat1 = achat.copywith(uidAchat: 'uid');
    final achat2 = achat.copywith(uidAchat: 'uid2');
    final streamListeAchatsClient =
        achatRepository.listeAchatsClient(uidUtilisateur: 'CzYdm');
    expect(
      streamListeAchatsClient,
      emits(
        [achat1, achat2],
      ),
    );
    verify(
      () => collectionReference.stream,
    ).called(1);
  });

  test('liste achats', () async {
    final achat1 = achat.copywith(uidAchat: 'uid');
    final achat2 = achat.copywith(uidAchat: 'uid2');
    final streamListeAchatsClient = achatRepository.listeAchats();
    expect(
      streamListeAchatsClient,
      emits(
        [achat1, achat2],
      ),
    );
    verify(
      () => collectionReference.stream,
    ).called(1);
  });
}
