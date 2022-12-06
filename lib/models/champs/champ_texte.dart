import 'package:formz/formz.dart';

enum ChampTexteValidationError {
  empty,
  notValid,
}

extension ChampTexteErrorTxt on ChampTexteValidationError {
  String get msgErreur {
    switch (this) {
      case ChampTexteValidationError.empty:
        return 'Requis !';
      case ChampTexteValidationError.notValid:
        return 'Texte invalide';
    }
  }
}

class ChampTexte extends FormzInput<String, ChampTexteValidationError> {
  const ChampTexte.pure() : super.pure('');
  const ChampTexte.dirty([super.value = '']) : super.dirty();

  @override
  ChampTexteValidationError? validator(String? value) {
    final texteRegExp = RegExp(r'^[a-zA-Z0-9]+$');
    if (value?.isNotEmpty == true) {
      if (texteRegExp.hasMatch(value!) == false) {
        return ChampTexteValidationError.notValid;
      }
    }
    return value?.isNotEmpty == true ? null : ChampTexteValidationError.empty;
  }
}
