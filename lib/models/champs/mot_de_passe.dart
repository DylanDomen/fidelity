import 'package:formz/formz.dart';

enum MotDePasseValidationError { empty, notPassword }

extension MotDePasseErrorTxt on MotDePasseValidationError {
  String get msgErreur {
    switch (this) {
      case MotDePasseValidationError.empty:
        return 'Requis !';
      case MotDePasseValidationError.notPassword:
        return 'Mot de passe 6 caractéres minimum';
    }
  }
}

class MotDePasse extends FormzInput<String, MotDePasseValidationError> {
  const MotDePasse.pure() : super.pure('');
  const MotDePasse.dirty([super.value = '']) : super.dirty();

  @override
  MotDePasseValidationError? validator(String? value) {
    if (value != null) {
      if (value.isNotEmpty) {
        if (value.runes.length < 6) {
          return MotDePasseValidationError.notPassword;
        }
      }
    }

    return value?.isNotEmpty == true ? null : MotDePasseValidationError.empty;
  }
}
