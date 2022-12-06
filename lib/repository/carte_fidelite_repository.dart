import 'package:fidelity/models/carte_fidelite.dart';
import 'package:firedart/firedart.dart';

class CarteFideliteRepository {
  const CarteFideliteRepository({
    required this.firestore,
  });

  final String nomCollection = 'cartesFidelite';
  final Firestore firestore;

  Future<CarteFidelite> creerCarteFidelite({
    required CarteFidelite carteFidelite,
  }) async {
    try {
      final carteFideliteDoc =
          await firestore.collection(nomCollection).add(carteFidelite.toJson());
      return carteFidelite.copywith(uidCarteFidelite: carteFideliteDoc.id);
    } catch (e) {
      throw Exception('Ajout carteFidelite impossible !');
    }
  }

  Future<void> modifierCarteFidelite({
    required CarteFidelite carteFidelite,
  }) async {
    try {
      await firestore
          .collection(nomCollection)
          .document(carteFidelite.uidCarteFidelite!)
          .set(carteFidelite.toJson());
    } catch (e) {
      throw Exception('Modification carteFidelite impossible !');
    }
  }

  Future<void> supprimerCarteFidelite({
    required String uidCarteFidelite,
  }) async {
    try {
      await firestore
          .collection(nomCollection)
          .document(uidCarteFidelite)
          .delete();
    } catch (e) {
      throw Exception('Modification carteFidelite impossible !');
    }
  }

  DocumentReference retourneCarteFideliteDocReference({
    required CarteFidelite carteFidelite,
  }) {
    return firestore
        .collection(nomCollection)
        .document(carteFidelite.uidCarteFidelite!);
  }

  Stream<CarteFidelite?> selectionneCarteFidelite({
    required String uidCarteFidelite,
  }) {
    if (uidCarteFidelite != '') {
      return firestore
          .collection(nomCollection)
          .document(uidCarteFidelite)
          .stream
          .map(
            (event) => CarteFidelite.fromJson(event!.map)
                .copywith(uidCarteFidelite: uidCarteFidelite),
          );
    }

    return const Stream.empty();
  }

  Stream<List<CarteFidelite>?> listeCarteFidelite() {
    return firestore.collection(nomCollection).stream.map(
          (listeCarteFideliteDoc) => listeCarteFideliteDoc
              .map(
                (carteFideliteDoc) =>
                    CarteFidelite.fromJson(carteFideliteDoc.map)
                        .copywith(uidCarteFidelite: carteFideliteDoc.id),
              )
              .toList(),
        );
  }

  Stream<CarteFidelite?> selectionneCarteFideliteViaMobile({
    required String mobileUtilisateur,
  }) {
    if (mobileUtilisateur != '') {
      return firestore.collection(nomCollection).stream.map(
            (listeCarteFideliteDoc) => listeCarteFideliteDoc
                .map(
                  (carteFideliteDoc) =>
                      CarteFidelite.fromJson(carteFideliteDoc.map)
                          .copywith(uidCarteFidelite: carteFideliteDoc.id),
                )
                .where(
                  (carteFidelite) =>
                      carteFidelite.mobileUtilisateur == mobileUtilisateur,
                )
                .first,
          );
    }

    return const Stream.empty();
  }

  Stream<CarteFidelite?> selectionneCarteFideliteViaMail({
    required String mailUtilisateur,
  }) {
    if (mailUtilisateur != '') {
      return firestore.collection(nomCollection).stream.map(
            (listeCarteFideliteDoc) => listeCarteFideliteDoc
                .map(
                  (carteFideliteDoc) =>
                      CarteFidelite.fromJson(carteFideliteDoc.map)
                          .copywith(uidCarteFidelite: carteFideliteDoc.id),
                )
                .where(
                  (carteFidelite) =>
                      carteFidelite.mailUtilisateur == mailUtilisateur,
                )
                .first,
          );
    }

    return const Stream.empty();
  }

  Stream<CarteFidelite?> selectionneCarteFideliteViaNumeroCarte({
    required String numeroCarte,
  }) {
    if (numeroCarte != '') {
      return firestore.collection(nomCollection).stream.map(
            (listeCarteFideliteDoc) => listeCarteFideliteDoc
                .map(
                  (carteFideliteDoc) =>
                      CarteFidelite.fromJson(carteFideliteDoc.map)
                          .copywith(uidCarteFidelite: carteFideliteDoc.id),
                )
                .where(
                  (carteFidelite) => carteFidelite.numeroCarte == numeroCarte,
                )
                .first,
          );
    }

    return const Stream.empty();
  }
}
