import 'package:fidelity/pages/infos_client/infos_client.dart';
import 'package:fidelity/shared/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InfosClientPage extends StatelessWidget {
  static Page<dynamic> page() =>
      const MaterialPage<void>(child: InfosClientPage());

  const InfosClientPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: couleurBackground,
      body: Padding(
        padding: EdgeInsets.zero,
        child: BlocProvider<InfosClientCubit>(
          create: (context) => InfosClientCubit(),
          child: const InfosClientView(),
        ),
      ),
    );
  }
}
