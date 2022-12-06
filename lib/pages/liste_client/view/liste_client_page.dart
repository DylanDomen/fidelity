import 'package:fidelity/app/bloc/app_bloc.dart';
import 'package:fidelity/pages/liste_client/liste_client.dart';
import 'package:fidelity/repository/utilisateur_repository.dart';
import 'package:fidelity/shared/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListeClientPage extends StatelessWidget {
  static Page<dynamic> page() =>
      const MaterialPage<void>(child: ListeClientPage());

  const ListeClientPage({super.key});

  @override
  Widget build(BuildContext context) {
    final appBloc = context.watch<AppBloc>();
    return Scaffold(
      backgroundColor: couleurBackground,
      body: Padding(
        padding: EdgeInsets.zero,
        child: BlocProvider<ListeClientCubit>(
          create: (context) => ListeClientCubit(
            utilisateurRepository: context.read<UtilisateurRepository>(),
            appBloc: appBloc,
          ),
          child: const ListeClientView(),
        ),
      ),
    );
  }
}
