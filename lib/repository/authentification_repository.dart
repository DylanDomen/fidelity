import 'package:equatable/equatable.dart';
import 'package:firedart/auth/exceptions.dart';
import 'package:firedart/auth/user_gateway.dart';
import 'package:firedart/firedart.dart';

class AuthentificationRepository {
  AuthentificationRepository({
    required this.firebaseAuth,
  });

  final FirebaseAuth firebaseAuth;

  Stream<bool> etatConnexion() {
    return firebaseAuth.signInState;
  }

  bool etatConnexionCourant() {
    return firebaseAuth.isSignedIn;
  }

  Stream<User> get user {
    return firebaseAuth.getUser().asStream().map((firebaseUser) {
      return UserEquatable.fromMap(firebaseUser.toMap());
    });
  }

  Future<User> connexionAvecEmailEtMotDePasse({
    required String email,
    required String password,
  }) async {
    try {
      return await firebaseAuth.signIn(
        email,
        password,
      );
    } on AuthException catch (e) {
      throw LogInWithEmailAndPasswordFailure.fromCode(e.message);
    } catch (e) {
      throw const LogInWithEmailAndPasswordFailure();
    }
  }

  Future<User> inscriptionAvecEmailEtMotDePasse({
    required String email,
    required String password,
  }) async {
    try {
      print('aled');
      return await firebaseAuth.signUp(
        email,
        password,
      );
    } on AuthException catch (e) {
      print(e);
      throw LogInWithEmailAndPasswordFailure.fromCode(e.message);
    } catch (e) {
      print(e);
      throw const LogInWithEmailAndPasswordFailure();
    }
  }

  Future<void> deconnexion() async {
    try {
      firebaseAuth.signOut();
    } catch (e) {
      rethrow;
    }
  }
}

class LogInWithEmailAndPasswordFailure implements Exception {
  /// {@macro log_in_with_email_and_password_failure}
  const LogInWithEmailAndPasswordFailure([
    this.message = "Une exception inconnue s'est produite.",
  ]);

  /// Create an authentication message
  /// from a firebase authentication exception code.
  factory LogInWithEmailAndPasswordFailure.fromCode(String code) {
    switch (code) {
      case 'INVALID_EMAIL':
        return const LogInWithEmailAndPasswordFailure(
          "L'e-mail n'est pas valide ou est mal formaté.",
        );
      case 'USER_DISABLED':
        return const LogInWithEmailAndPasswordFailure(
          'Cet utilisateur a été désactivé.'
          " Veuillez contacter l'assistance pour obtenir de l'aide.",
        );
      case 'EMAIL_NOT_FOUND':
        return const LogInWithEmailAndPasswordFailure(
          "L'e-mail n'a pas été trouvé, veuillez créer un compte.",
        );
      case 'INVALID_PASSWORD':
        return const LogInWithEmailAndPasswordFailure(
          'Mot de passe incorrect, veuillez réessayer.',
        );
      default:
        return const LogInWithEmailAndPasswordFailure();
    }
  }

  /// The associated error message.
  final String message;
}

class UserEquatable extends User with EquatableMixin {
  UserEquatable.fromMap(super.map) : super.fromMap();

  @override
  List<Object?> get props => [
        super.id,
        super.email,
        super.displayName,
        super.photoUrl,
        super.emailVerified,
      ];
}
