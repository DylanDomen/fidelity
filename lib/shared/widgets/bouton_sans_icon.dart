import 'package:fidelity/shared/constants/colors.dart';
import 'package:fidelity/shared/constants/text_style.dart';
import 'package:flutter/material.dart';

typedef OnTapCallback = void Function();

class BoutonSansIcon extends StatelessWidget {
  const BoutonSansIcon({
    super.key,
    required this.texte,
    this.largeur,
    this.onTapCallback,
  });

  final String texte;
  final double? largeur;
  final OnTapCallback? onTapCallback;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTapCallback?.call(),
      child: Container(
        width: largeur,
        constraints:
            largeur == null ? const BoxConstraints(maxWidth: 150) : null,
        height: 40,
        decoration: BoxDecoration(
          color: couleurBoutonValider,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.only(left: 9, right: 9),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Text(
                texte,
                style: labelBouton,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
