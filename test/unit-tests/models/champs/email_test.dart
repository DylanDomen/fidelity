import 'package:fidelity/models/champs/email.dart';
import 'package:test/test.dart';

void main() {
  const emailString = 'mock-email';
  group('Email', () {
    group('constructeur', () {
      test('pure creer une instance correct', () {
        const email = Email.pure();
        expect(email.value, '');
        expect(email.pure, true);
      });
      test('dirty creer une instance correct', () {
        const email = Email.dirty(emailString);
        expect(email.value, emailString);
        expect(email.pure, false);
      });
    });
  });
  group('Validateur', () {
    test('retourne empty erreur quand email est vide', () {
      expect(const Email.dirty('').error, EmailValidationError.empty);
    });
    test('retourne empty erreur quand email mal formaté', () {
      expect(
        const Email.dirty('test.com').error,
        EmailValidationError.notEmail,
      );
    });
    test('retourne null quand email correct', () {
      expect(const Email.dirty('test@test.fr').error, isNull);
    });
  });
  group('Message erreur', () {
    test('Message empty erreur', () {
      expect(EmailValidationError.empty.msgErreur, 'Requis !');
    });
    test('Message notEmail erreur', () {
      expect(EmailValidationError.notEmail.msgErreur, 'Email mauvais format');
    });
  });
}
