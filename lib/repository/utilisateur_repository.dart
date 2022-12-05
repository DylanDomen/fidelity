import 'package:fidelity/models/role.dart';
import 'package:fidelity/models/utilisateur.dart';
import 'package:firedart/firedart.dart';

class UtilisateurRepository {
  UtilisateurRepository({
    required this.firestore,
  });

  String nomCollection = 'utilisateurs';
  Firestore firestore;

  Future<Utilisateur> ajouterUtilisateur({
    required Utilisateur utilisateur,
  }) async {
    try {
      utilisateur.copywith(role: Role.client);
      final utilisateurDoc =
          await firestore.collection(nomCollection).add(utilisateur.toJson());
      return utilisateur.copywith(uidUtilisateur: utilisateurDoc.id);
    } catch (e) {
      throw Exception('Ajout utilisateur impossible !');
    }
  }

  Future<void> modifierUtilisateur({
    required Utilisateur utilisateur,
  }) async {
    try {
      await firestore
          .collection(nomCollection)
          .document(utilisateur.uidUtilisateur)
          .set(utilisateur.toJson());
    } catch (e) {
      throw Exception('Modification utilisateur impossible !');
    }
  }

  Future<void> supprimerUtilisateur({
    required String uidUtilisateur,
  }) async {
    try {
      await firestore
          .collection(nomCollection)
          .document(uidUtilisateur)
          .delete();
    } catch (e) {
      throw Exception('Modification utilisateur impossible !');
    }
  }

  DocumentReference retourneUtilisateurDocReference({
    required Utilisateur utilisateur,
  }) {
    return firestore
        .collection(nomCollection)
        .document(utilisateur.uidUtilisateur);
  }

  Stream<Utilisateur?> selectionneUtilisateur({
    required String uidUtilisateur,
  }) {
    if (uidUtilisateur != '') {
      return firestore
          .collection(nomCollection)
          .document(uidUtilisateur)
          .stream
          .map(
            (event) => Utilisateur.fromJson(event!.map)
                .copywith(uidUtilisateur: uidUtilisateur),
          );
    }

    return const Stream.empty();
  }

  Stream<List<Utilisateur>?> listeUtilisateur() {
    return firestore.collection(nomCollection).stream.map(
          (listeUtilisateurDoc) => listeUtilisateurDoc
              .map(
                (utilisateurDoc) => Utilisateur.fromJson(utilisateurDoc.map)
                    .copywith(uidUtilisateur: utilisateurDoc.id),
              )
              .toList(),
        );
  }
}
