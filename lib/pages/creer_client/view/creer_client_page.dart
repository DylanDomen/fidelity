import 'package:fidelity/pages/creer_client/creer_client.dart';
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
        create: (context) => CreerClientCubit(),
        child: const CreerClientView(),
      ),
    );
  }
}
