import 'package:flutter/material.dart';

class BoutonSansTexte extends StatelessWidget {
  const BoutonSansTexte({
    super.key,
    required this.onPress,
    required this.icon,
    required this.color,
  });
  final Function()? onPress;
  final Widget icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: IconButton(
        onPressed: onPress,
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        focusColor: Colors.transparent,
        highlightColor: Colors.transparent,
        iconSize: 15,
        icon: icon,
      ),
    );
  }
}
