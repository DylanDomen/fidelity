import 'package:fidelity/app/bloc/app_bloc.dart';
import 'package:fidelity/pages/infos_client/infos_client.dart';
import 'package:fidelity/repository/achat_repository.dart';
import 'package:fidelity/repository/carte_fidelite_repository.dart';
import 'package:fidelity/repository/utilisateur_repository.dart';
import 'package:fidelity/shared/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InfosClientPage extends StatelessWidget {
  static Page<dynamic> page() =>
      const MaterialPage<void>(child: InfosClientPage());

  const InfosClientPage({super.key});

  @override
  Widget build(BuildContext context) {
    final appBloc = context.watch<AppBloc>();

    return Scaffold(
      backgroundColor: couleurBackground,
      body: Padding(
        padding: EdgeInsets.zero,
        child: BlocProvider<InfosClientCubit>(
          create: (context) => InfosClientCubit(
            appBloc: appBloc,
            utilisateurRepository: context.read<UtilisateurRepository>(),
            achatRepository: context.read<AchatRepository>(),
            carteFideliteRepository: context.read<CarteFideliteRepository>(),
          ),
          child: const InfosClientView(),
        ),
      ),
    );
  }
}
