import 'package:formz/formz.dart';

enum MobileValidationError { empty, notMobile }

extension MobileErrorTxt on MobileValidationError {
  String get msgErreur {
    switch (this) {
      case MobileValidationError.empty:
        return 'Requis !';
      case MobileValidationError.notMobile:
        return 'Numero de mobile mauvais format';
    }
  }
}

class Mobile extends FormzInput<String, MobileValidationError> {
  const Mobile.pure() : super.pure('');
  const Mobile.dirty([super.value = '']) : super.dirty();

  @override
  MobileValidationError? validator(String? value) {
    final mobileRegExp = RegExp(r'^\d{0,10}$');
    if (value?.isNotEmpty == true) {
      if (mobileRegExp.hasMatch(value!) == false) {
        return MobileValidationError.notMobile;
      }
    }

    return value?.isNotEmpty == true ? null : MobileValidationError.empty;
  }
}
