import 'package:fidelity/app/bloc/app_bloc.dart';
import 'package:fidelity/pages/ajout_achat/ajout_achat.dart';
import 'package:fidelity/repository/achat_repository.dart';
import 'package:fidelity/repository/carte_fidelite_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AjoutAchatPage extends StatelessWidget {
  static Page<dynamic> page() =>
      const MaterialPage<void>(child: AjoutAchatPage());

  const AjoutAchatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final appBloc = context.watch<AppBloc>();
    return Dialog(
      backgroundColor: Colors.white,
      child: BlocProvider(
        create: (context) => AjoutAchatCubit(
          appBloc: appBloc,
          achatRepository: context.read<AchatRepository>(),
          carteFideliteRepository: context.read<CarteFideliteRepository>(),
          navigatorState: Navigator.of(context),
        ),
        child: const AjoutAchatView(),
      ),
    );
  }
}
