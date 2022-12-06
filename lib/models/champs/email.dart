import 'package:formz/formz.dart';

enum EmailValidationError { empty, notEmail }

extension EmailErrorTxt on EmailValidationError {
  String get msgErreur {
    switch (this) {
      case EmailValidationError.empty:
        return 'Requis !';
      case EmailValidationError.notEmail:
        return 'Email mauvais format';
    }
  }
}

class Email extends FormzInput<String, EmailValidationError> {
  const Email.pure() : super.pure('');
  const Email.dirty([super.value = '']) : super.dirty();

  @override
  EmailValidationError? validator(String? value) {
    final emailRegExp =
        RegExp(r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$');
    if (value?.isNotEmpty == true) {
      if (emailRegExp.hasMatch(value!) == false) {
        return EmailValidationError.notEmail;
      }
    }

    return value?.isNotEmpty == true ? null : EmailValidationError.empty;
  }
}
