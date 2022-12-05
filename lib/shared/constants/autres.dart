import 'package:fidelity/shared/constants/colors.dart';
import 'package:flutter/material.dart';

const double radiusGlobal = 8;

final borderStyle = OutlineInputBorder(
  borderRadius: const BorderRadius.all(Radius.circular(radiusGlobal)),
  borderSide: BorderSide(
    color: borderColor_1.withOpacity(0.4),
    width: 1.05,
  ),
);
final boxShadow = BoxShadow(
  blurRadius: 4,
  color: Colors.black.withOpacity(0.25),
  spreadRadius: 0,
  offset: const Offset(0, 4),
);
