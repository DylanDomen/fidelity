import 'package:fidelity/models/magasin.dart';
import 'package:formz/formz.dart';

enum ChampMagasinValidationError {
  pasValide,
}

extension ChampMagasinErrorTxt on ChampMagasinValidationError {
  String get msgErreur {
    switch (this) {
      case ChampMagasinValidationError.pasValide:
        return 'Requis !';
    }
  }
}

class ChampMagasin extends FormzInput<Magasin?, ChampMagasinValidationError> {
  const ChampMagasin.pure() : super.pure(null);
  const ChampMagasin.dirty([super.value]) : super.dirty();

  @override
  ChampMagasinValidationError? validator(Magasin? value) {
    return null;
  }
}
