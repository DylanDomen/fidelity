import 'package:fidelity/pages/connexion/connexion.dart';
import 'package:fidelity/shared/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConnexionPage extends StatelessWidget {
  static Page<dynamic> page() =>
      const MaterialPage<void>(child: ConnexionPage());

  const ConnexionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: couleurBackground,
      body: Padding(
        padding: EdgeInsets.zero,
        child: BlocProvider<ConnexionCubit>(
          create: (context) => ConnexionCubit(),
          child: const ConnexionView(),
        ),
      ),
    );
  }
}
