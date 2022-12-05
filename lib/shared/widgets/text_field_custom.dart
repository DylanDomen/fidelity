import 'package:fidelity/shared/constants/autres.dart';
import 'package:fidelity/shared/constants/colors.dart';
import 'package:fidelity/shared/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:formz/formz.dart';

typedef OnChangeCallback = void Function(String data);
typedef OnSubmitCallback = void Function(String data);
typedef OnTapCallback = void Function();

class TextFieldCustom extends TextField {
  TextFieldCustom({
    super.key,
    this.hintText,
    this.prefixIcon,
    this.labelText,
    this.activer,
    this.obscurcisText = false,
    this.onChangedMethod,
    this.onTapCallback,
    this.onSubmitCallback,
    this.inputAction,
    this.textAlignement = TextAlign.left,
    this.maxLignes = 1,
    this.textEditingController,
    this.textInputType,
    this.listeInputFormatter = const [],
    required this.formzInput,
    required this.messageErreur,
  }) : super(
          style: normalStyle_1,
          keyboardType: textInputType,
          textInputAction: inputAction,
          inputFormatters: listeInputFormatter,
          maxLines: maxLignes,
          obscureText: obscurcisText,
          textAlign: textAlignement,
          controller: textEditingController,
          enabled: activer,
          onChanged: (value) => onChangedMethod?.call(value),
          onTap: () => onTapCallback?.call(),
          onSubmitted: (value) => onSubmitCallback?.call(value),
          decoration: InputDecoration(
            prefixIcon: (prefixIcon != null)
                ? Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: prefixIcon,
                  )
                : null,
            labelText: labelText,
            labelStyle: labelStyle,
            errorText: formzInput?.invalid ?? false ? messageErreur : null,
            border: borderTextField,
            focusedBorder: borderTextFieldFocused,
            enabledBorder: borderTextField,
            hintStyle: hintTextStyle_1,
            hintText: hintText,
            filled: true,
            fillColor: textfieldColorBackground,
          ),
        );
  final OnChangeCallback? onChangedMethod;
  final OnSubmitCallback? onSubmitCallback;
  final OnTapCallback? onTapCallback;
  final FormzInput? formzInput;
  final String? messageErreur;
  final String? hintText;
  final String? labelText;
  final TextInputAction? inputAction;
  final TextEditingController? textEditingController;
  final int? maxLignes;
  final bool obscurcisText;
  final TextAlign textAlignement;
  final bool? activer;
  final Widget? prefixIcon;
  final TextInputType? textInputType;
  final List<TextInputFormatter>? listeInputFormatter;
}

const borderTextField = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(radiusGlobal)),
  borderSide: BorderSide(
    color: Colors.transparent,
    width: 0,
  ),
);
const borderTextFieldFocused = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(radiusGlobal)),
  borderSide: BorderSide(
    color: couleurFocusTextfield,
    width: 2,
  ),
);
