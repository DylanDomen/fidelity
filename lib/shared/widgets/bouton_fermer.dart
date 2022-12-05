import 'package:fidelity/shared/constants/colors.dart';
import 'package:flutter/material.dart';

class BoutonFermer extends StatelessWidget {
  const BoutonFermer({
    super.key,
    required this.onPress,
  });
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: couleurBoutonFermer,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: IconButton(
        onPressed: onPress,
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        focusColor: Colors.transparent,
        highlightColor: Colors.transparent,
        iconSize: 15,
        icon: const Icon(
          Icons.close,
          color: Colors.white,
          size: 25,
        ),
      ),
    );
  }
}
