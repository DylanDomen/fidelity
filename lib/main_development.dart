// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'dart:async';

import 'package:desktop_window/desktop_window.dart';
import 'package:fidelity/app/bloc/app_bloc.dart';
import 'package:fidelity/bootstrap.dart';
import 'package:fidelity/pages/connexion/connexion.dart';
import 'package:fidelity/repository/achat_repository.dart';
import 'package:fidelity/repository/authentification_repository.dart';
import 'package:fidelity/repository/carte_fidelite_repository.dart';
import 'package:fidelity/repository/utilisateur_repository.dart';
import 'package:firedart/firedart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Firestore.initialize('fidelity-fire');
  FirebaseAuth.initialize(
      'AIzaSyCcgsqChXUws6YMPwCo2bQk0sCmZdhVxsM', VolatileStore());
  unawaited(DesktopWindow.setWindowSize(const Size(1280, 720)));

  unawaited(DesktopWindow.setMinWindowSize(const Size(1280, 720)));
  final appBloc = AppBloc();

  await bootstrap(
    () => MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) =>
              UtilisateurRepository(firestore: Firestore.instance),
        ),
        RepositoryProvider(
          create: (context) =>
              CarteFideliteRepository(firestore: Firestore.instance),
        ),
        RepositoryProvider(
          create: (context) => AchatRepository(firestore: Firestore.instance),
        ),
        RepositoryProvider(
          create: (context) =>
              AuthentificationRepository(firebaseAuth: FirebaseAuth.instance),
        ),
      ],
      child: BlocProvider(
        create: (context) => appBloc,
        child: const MaterialApp(
          home: ConnexionPage(),
        ),
      ),
    ),
  );
}
