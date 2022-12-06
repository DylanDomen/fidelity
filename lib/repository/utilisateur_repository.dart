import 'package:fidelity/models/role.dart';
import 'package:fidelity/models/utilisateur.dart';
import 'package:fidelity/repository/authentification_repository.dart';
import 'package:firedart/firedart.dart';

class UtilisateurRepository {
  UtilisateurRepository({
    required this.firestore,
    AuthentificationRepository? authentificationRepository,
  }) : _authentificationRepository = authentificationRepository ??
            AuthentificationRepository(firebaseAuth: FirebaseAuth.instance);

  String nomCollection = 'utilisateurs';
  Firestore firestore;
  late AuthentificationRepository _authentificationRepository;

  Future<Utilisateur> ajouterUtilisateur({
    required Utilisateur utilisateur,
  }) async {
    try {
      print(1);
      final user =
          await _authentificationRepository.inscriptionAvecEmailEtMotDePasse(
              email: utilisateur.mail, password: 'motdepassetest');
      print(_authentificationRepository.etatConnexionCourant());
      final utilisateurDoc = await firestore
          .collection(nomCollection)
          .document(user.id)
          .set(utilisateur.copywith(uidUtilisateur: user.id).toJson());
      return utilisateur.copywith(uidUtilisateur: user.id);
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
          .document(utilisateur.uidUtilisateur!)
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
        .document(utilisateur.uidUtilisateur!);
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

  Stream<List<Utilisateur>?> listeClients() {
    return firestore.collection(nomCollection).stream.map(
          (listeUtilisateurDoc) => listeUtilisateurDoc
              .map(
                (utilisateurDoc) => Utilisateur.fromJson(utilisateurDoc.map)
                    .copywith(uidUtilisateur: utilisateurDoc.id),
              )
              .where(
                (utilisateur) => utilisateur.role == Role.client,
              )
              .toList(),
        );
  }
}
