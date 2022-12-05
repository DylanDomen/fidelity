import 'package:fidelity/shared/constants/autres.dart';
import 'package:fidelity/shared/constants/colors.dart';
import 'package:fidelity/shared/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';

class DropdownCustom extends StatelessWidget {
  const DropdownCustom({
    super.key,
    this.titre,
    required this.globalKey,
    this.messageErreur,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.alignment = Alignment.center,
    required this.formzInput,
    this.liste = const [],
  });
  final GlobalKey globalKey;
  final String? titre;
  final Alignment alignment;
  final String? hintText;
  final String? messageErreur;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final FormzInput? formzInput;
  final List<DropdownMenuItemCustom> liste;
  final Function(Object?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (titre != '' && titre != null)
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              titre!,
              style: labelStyle,
            ),
          )
        else
          Container(),
        DecoratedBox(
          decoration: BoxDecoration(
            color: textfieldColorBackground,
            borderRadius: const BorderRadius.all(Radius.circular(radiusGlobal)),
            border: Border.all(
              color: formzInput?.invalid ?? false
                  ? Colors.red
                  : Colors.transparent,
              width: messageErreur != '' && messageErreur != null ? 1 : 0,
            ),
          ),
          child: InkWell(
            key: const Key('InkWellDropdownCustom'),
            onTap: () =>
                globalKey.currentContext?.visitChildElements((element) {
              if (element.widget is Semantics) {
                element.visitChildElements((element) {
                  if (element.widget is Actions) {
                    element.visitChildElements((element) {
                      Actions.invoke(element, const ActivateIntent());
                    });
                  }
                });
              }
            }),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    top: 13,
                    bottom: 13,
                    left: 15,
                    right: 10,
                  ),
                  child: prefixIcon ?? Container(),
                ),
                Expanded(
                  child: DropdownGeneric(
                    value: formzInput?.value,
                    onChanged: onChanged,
                    text: hintText ?? '',
                    listeItems: liste,
                    alignment: alignment,
                    globalKey: globalKey,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 10),
                  child: suffixIcon ?? Container(),
                ),
              ],
            ),
          ),
        ),
        if (messageErreur != '' && messageErreur != null)
          const SizedBox(
            height: 5,
          ),
        if (messageErreur != '' && messageErreur != null)
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              messageErreur ?? 'Erreur',
              style: normalErreurStyle_1,
            ),
          )
      ],
    );
  }
}

class DropdownMenuItemCustom extends DropdownMenuItem<Object> {
  DropdownMenuItemCustom({super.key, required this.object, required this.texte})
      : super(
          value: object,
          child: Align(
            child: Text(
              texte,
              textAlign: TextAlign.center,
              style: normalStyle_1,
            ),
          ),
        );
  final Object object;
  final String texte;
}

class DropdownGeneric extends StatelessWidget {
  const DropdownGeneric({
    super.key,
    required this.text,
    required this.listeItems,
    required this.value,
    required this.onChanged,
    required this.alignment,
    required this.globalKey,
  });
  final Function(Object?)? onChanged;
  final String text;
  final Alignment alignment;
  final Object? value;
  final GlobalKey globalKey;
  final List<DropdownMenuItem<Object>> listeItems;

  @override
  Widget build(BuildContext context) {
    return listeItems.isNotEmpty
        ? DropdownButton<Object>(
            key: globalKey,
            underline: Container(),
            isExpanded: true,
            iconSize: 0,
            value: value,
            hint: Align(
              alignment: alignment,
              child: Text(
                text,
                style: hintTextStyle_1,
              ),
            ),
            items: listeItems,
            onChanged: onChanged,
          )
        : Text(
            'Aucun élément',
            style: hintTextStyle_1,
          );
  }
}
