import 'package:fidelity/shared/constants/text_style.dart';
import 'package:fidelity/shared/widgets/text_field_custom.dart';
import 'package:flutter/material.dart';

class TextFieldAvecTitreCustom extends StatelessWidget {
  const TextFieldAvecTitreCustom({
    super.key,
    required this.titre,
    required this.textFieldCustom,
    this.styleTitre,
  });

  final String titre;
  final TextFieldCustom textFieldCustom;
  final TextStyle? styleTitre;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(titre, style: styleTitre ?? labelStyle),
        ),
        textFieldCustom,
      ],
    );
  }
}
