import 'package:fidelity/shared/constants/colors.dart';
import 'package:fidelity/shared/constants/text_style.dart';
import 'package:flutter/material.dart';

typedef OnTapCallback = void Function();

class BoutonOuiNon extends StatelessWidget {
  const BoutonOuiNon({
    super.key,
    required this.keyBouttonOui,
    required this.keyBouttonNon,
    this.onTapCallbackOui,
    this.onTapCallbackNon,
  });

  final Key keyBouttonOui;
  final Key keyBouttonNon;
  final OnTapCallback? onTapCallbackOui;
  final OnTapCallback? onTapCallbackNon;

  @override
  Widget build(BuildContext context) {
    const widthDesBouttons = 170.0;
    const heightDesBoutons = 40.0;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () => onTapCallbackOui?.call(),
          child: Container(
            key: keyBouttonOui,
            width: widthDesBouttons,
            height: heightDesBoutons,
            decoration: BoxDecoration(
              color: couleurBoutonValider,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
            ),
            padding: const EdgeInsets.only(left: 9, right: 9),
            child: Center(
              child: Text(
                'Oui',
                style: labelBouton,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        InkWell(
          onTap: () => onTapCallbackNon?.call(),
          child: Container(
            key: keyBouttonNon,
            width: widthDesBouttons,
            height: heightDesBoutons,
            decoration: const BoxDecoration(
              color: couleurBoutonAnnuler,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
            ),
            padding: const EdgeInsets.only(left: 9, right: 9),
            child: Center(
              child: Text(
                'Non',
                style: labelBouton,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
