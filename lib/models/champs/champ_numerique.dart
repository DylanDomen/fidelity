import 'package:formz/formz.dart';

enum ChampNumeriqueValidationError {
  empty,
}

extension ChampNumeriqueErrorTxt on ChampNumeriqueValidationError {
  String get msgErreur {
    switch (this) {
      case ChampNumeriqueValidationError.empty:
        return 'Requis !';
    }
  }
}

class ChampNumerique extends FormzInput<double, ChampNumeriqueValidationError> {
  const ChampNumerique.pure() : super.pure(0);
  const ChampNumerique.dirty([super.value = 0]) : super.dirty();

  @override
  ChampNumeriqueValidationError? validator(double value) {
    return null;
  }
}
