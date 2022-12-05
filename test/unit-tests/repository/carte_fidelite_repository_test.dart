import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:fidelity/models/carte_fidelite.dart';
import 'package:fidelity/repository/carte_fidelite_repository.dart';
import 'package:firedart/firedart.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockFirestore extends Mock implements Firestore {}

class MockDocument extends Mock implements Document {}

class MockDocumentReference extends Mock implements DocumentReference {}

class MockCollectionReference extends Mock implements CollectionReference {}

void main() {
  late CarteFidelite carteFidelite;
  late CarteFideliteRepository carteFideliteRepository;
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

    carteFidelite = const CarteFidelite(
      uidCarteFidelite: 'uid',
      numeroCarte: 'puExL',
      pointsFidelite: 31,
      mobileUtilisateur: '0692151515',
      mailUtilisateur: 'mail@gmail.com',
      nomPrenomUtilisateur: 'RohJe',
      uidUtilisateur: 'd6JrB',
    );
    fakeFirebaseFirestore = FakeFirebaseFirestore();

    carteFideliteRepository = CarteFideliteRepository(
      firestore: firestore,
    );
    when(
      () => firestore.collection('cartesFidelite'),
    ).thenReturn(collectionReference);
    when(
      () => collectionReference.add(carteFidelite.toJson()),
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
        carteFidelite.copywith(pointsFidelite: 50).toJson(),
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
    ).thenReturn(carteFidelite.copywith(uidCarteFidelite: 'uid').toJson());
    when(
      () => document2.map,
    ).thenReturn(carteFidelite.copywith(uidCarteFidelite: 'uid2').toJson());
  });
  test('creer carteFidelite', () async {
    final carteFideliteRef = await carteFideliteRepository.creerCarteFidelite(
      carteFidelite: carteFidelite,
    );
    expect(carteFideliteRef, isA<CarteFidelite>());
    expect(carteFideliteRef.uidCarteFidelite, 'uid');
  });

  test('Modifier carteFidelite', () async {
    final carteFideliteModifier = carteFidelite.copywith(pointsFidelite: 50);
    await carteFideliteRepository.modifierCarteFidelite(
      carteFidelite: carteFideliteModifier,
    );
    verify(
      () => documentReference.set(
        carteFidelite.copywith(pointsFidelite: 50).toJson(),
      ),
    ).called(1);
  });

  test('retourne carteFidelite doc reference', () async {
    final carteFideliteDocumentRef =
        carteFideliteRepository.retourneCarteFideliteDocReference(
      carteFidelite: carteFidelite,
    );
    expect(carteFideliteDocumentRef, isA<DocumentReference>());
    verify(
      () => collectionReference.document('uid'),
    ).called(1);
  });

  test('Supprimer carteFidelite', () async {
    await carteFideliteRepository.supprimerCarteFidelite(
        uidCarteFidelite: 'uid');
    verify(
      () => documentReference.delete(),
    ).called(1);
  });

  test('Selectionne carteFidelite', () async {
    final streamCarteFidelite = carteFideliteRepository
        .selectionneCarteFidelite(uidCarteFidelite: 'uid');
    expect(streamCarteFidelite, emits(carteFidelite));
  });

  test('Selectionne carteFidelite via numéro de carte', () async {
    final streamCarteFidelite = carteFideliteRepository
        .selectionneCarteFideliteViaNumeroCarte(numeroCarte: 'puExL');
    expect(streamCarteFidelite, emits(carteFidelite));
  });

  test('Selectionne carteFidelite via mobile', () async {
    final streamCarteFidelite = carteFideliteRepository
        .selectionneCarteFideliteViaMobile(mobileUtilisateur: '0692151515');
    expect(streamCarteFidelite, emits(carteFidelite));
  });

  test('Selectionne carteFidelite via mail', () async {
    final streamCarteFidelite = carteFideliteRepository
        .selectionneCarteFideliteViaMail(mailUtilisateur: 'mail@gmail.com');
    expect(streamCarteFidelite, emits(carteFidelite));
  });

  test('Selectionne carteFidelite mais id vide', () async {
    final streamCarteFidelite =
        carteFideliteRepository.selectionneCarteFidelite(
      uidCarteFidelite: '',
    );
    expect(streamCarteFidelite, emitsDone);
  });

  test('liste carteFidelite', () async {
    final carteFidelite2 = carteFidelite.copywith(uidCarteFidelite: 'uid2');

    final stramListeCarteFidelite =
        carteFideliteRepository.listeCarteFidelite();

    expect(
      stramListeCarteFidelite,
      emits(
        [carteFidelite, carteFidelite2],
      ),
    );
    verify(
      () => collectionReference.stream,
    ).called(1);
  });
}
