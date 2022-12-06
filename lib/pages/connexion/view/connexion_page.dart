import 'package:fidelity/app/bloc/app_bloc.dart';
import 'package:fidelity/pages/connexion/connexion.dart';
import 'package:fidelity/repository/authentification_repository.dart';
import 'package:fidelity/shared/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConnexionPage extends StatelessWidget {
  static Page<dynamic> page() =>
      const MaterialPage<void>(child: ConnexionPage());

  const ConnexionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final appBloc = context.watch<AppBloc>();
    return Scaffold(
      backgroundColor: couleurBackground,
      body: Padding(
        padding: EdgeInsets.zero,
        child: BlocProvider<ConnexionCubit>(
          create: (context) => ConnexionCubit(
            authentificationRepository:
                context.read<AuthentificationRepository>(),
            appBloc: appBloc,
          ),
          child: const ConnexionView(),
        ),
      ),
    );
  }
}
