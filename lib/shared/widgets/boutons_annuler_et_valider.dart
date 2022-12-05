import 'package:fidelity/shared/constants/colors.dart';
import 'package:fidelity/shared/constants/text_style.dart';
import 'package:flutter/material.dart';

typedef OnTapCallback = void Function();

class BoutonRetourEtSuivant extends StatelessWidget {
  const BoutonRetourEtSuivant({
    super.key,
    required this.keyBouttonAnnuler,
    required this.keyBouttonValider,
    this.onTapCallbackAnnuler,
    this.onTapCallbackValider,
  });

  final Key keyBouttonAnnuler;
  final Key keyBouttonValider;
  final OnTapCallback? onTapCallbackAnnuler;
  final OnTapCallback? onTapCallbackValider;

  @override
  Widget build(BuildContext context) {
    const widthDesBouttons = 170.0;
    const heightDesBoutons = 40.0;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () => onTapCallbackAnnuler?.call(),
          child: Container(
            key: keyBouttonAnnuler,
            width: widthDesBouttons,
            height: heightDesBoutons,
            decoration: BoxDecoration(
              color: couleurBoutonAnnuler,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.only(left: 9, right: 9),
            child: Center(
              child: Text(
                'Annuler',
                style: labelBouton,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 40,
        ),
        InkWell(
          onTap: () => onTapCallbackValider?.call(),
          child: Container(
            key: keyBouttonValider,
            width: widthDesBouttons,
            height: heightDesBoutons,
            decoration: BoxDecoration(
              color: couleurBoutonValider,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.only(left: 9, right: 9),
            child: Center(
              child: Text(
                'Valider',
                style: labelBouton,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
