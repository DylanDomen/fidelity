// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'dart:async';

import 'package:desktop_window/desktop_window.dart';
import 'package:fidelity/bootstrap.dart';
import 'package:fidelity/pages/creer_client/creer_client.dart';
import 'package:firedart/firedart.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Firestore.initialize('fidelity-fire');

  unawaited(DesktopWindow.setWindowSize(const Size(1280, 720)));

  unawaited(DesktopWindow.setMinWindowSize(const Size(1280, 720)));

  await bootstrap(
    () => const MaterialApp(
      home: CreerClientPage(),
    ),
  );
}
