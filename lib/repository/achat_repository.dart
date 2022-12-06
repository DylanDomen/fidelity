import 'package:fidelity/models/achat.dart';
import 'package:firedart/firestore/firestore.dart';
import 'package:firedart/firestore/models.dart';

class AchatRepository {
  const AchatRepository({
    required this.firestore,
  });

  final String nomCollection = 'achats';
  final Firestore firestore;

  Future<Achat> creerAchat({
    required Achat achat,
  }) async {
    try {
      final achatDoc =
          await firestore.collection(nomCollection).add(achat.toJson());
      return achat.copywith(uidAchat: achatDoc.id);
    } catch (e) {
      throw Exception('Ajout achat impossible !');
    }
  }

  Future<void> modifierAchat({
    required Achat achat,
  }) async {
    try {
      await firestore
          .collection(nomCollection)
          .document(achat.uidAchat!)
          .set(achat.toJson());
    } catch (e) {
      throw Exception('Modification achat impossible !');
    }
  }

  Future<void> supprimerAchat({
    required String uidAchat,
  }) async {
    try {
      await firestore.collection(nomCollection).document(uidAchat).delete();
    } catch (e) {
      throw Exception('Suppression achat impossible !');
    }
  }

  DocumentReference retourneAchatDocReference({
    required Achat achat,
  }) {
    return firestore.collection(nomCollection).document(achat.uidAchat!);
  }

  Stream<Achat?> selectionneAchat({
    required String uidAchat,
  }) {
    if (uidAchat != '') {
      return firestore.collection(nomCollection).document(uidAchat).stream.map(
            (event) => Achat.fromJson(event!.map).copywith(uidAchat: uidAchat),
          );
    }
    return const Stream.empty();
  }

  Stream<List<Achat>?> listeAchatsClient({required String uidUtilisateur}) {
    return firestore.collection(nomCollection).stream.map(
          (listeAchatDoc) => listeAchatDoc
              .map(
                (achatDoc) => Achat.fromJson(achatDoc.map)
                    .copywith(uidAchat: achatDoc.id),
              )
              .where((achat) => achat.uidUtilisateur == uidUtilisateur)
              .toList(),
        );
  }

  Stream<List<Achat>?> listeAchats() {
    return firestore.collection(nomCollection).stream.map(
          (listeAchatDoc) => listeAchatDoc
              .map(
                (achatDoc) => Achat.fromJson(achatDoc.map)
                    .copywith(uidAchat: achatDoc.id),
              )
              .toList(),
        );
  }
}
