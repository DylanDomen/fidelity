import 'package:fidelity/pages/ajout_achat/ajout_achat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AjoutAchatPage extends StatelessWidget {
  static Page<dynamic> page() =>
      const MaterialPage<void>(child: AjoutAchatPage());

  const AjoutAchatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      child: BlocProvider(
        create: (context) => AjoutAchatCubit(),
        child: const AjoutAchatView(),
      ),
    );
  }
}
