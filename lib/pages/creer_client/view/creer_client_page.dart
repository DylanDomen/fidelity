import 'package:fidelity/pages/creer_client/creer_client.dart';
import 'package:fidelity/repository/carte_fidelite_repository.dart';
import 'package:fidelity/repository/utilisateur_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreerClientPage extends StatelessWidget {
  static Page<dynamic> page() =>
      const MaterialPage<void>(child: CreerClientPage());

  const CreerClientPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      child: BlocProvider(
        create: (context) => CreerClientCubit(
          utilisateurRepository: context.read<UtilisateurRepository>(),
          carteFideliteRepository: context.read<CarteFideliteRepository>(),
          navigatorState: Navigator.of(context),
        ),
        child: const CreerClientView(),
      ),
    );
  }
}
