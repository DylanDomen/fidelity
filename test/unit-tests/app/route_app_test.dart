import 'package:fidelity/app/bloc/app_bloc.dart';
import 'package:fidelity/app/route_app.dart';
import 'package:fidelity/pages/connexion/view/connexion_page.dart';
import 'package:fidelity/pages/infos_client/infos_client.dart';
import 'package:fidelity/pages/liste_client/view/liste_client_page.dart';
import 'package:flutter/material.dart';
import 'package:test/test.dart';

void main() {
  final pageConnexion = isA<MaterialPage<dynamic>>()
      .having((p) => p.child, '', isA<ConnexionPage>());
  final pageListeClient = isA<MaterialPage<dynamic>>()
      .having((p) => p.child, '', isA<ListeClientPage>());
  final pageInfosClient = isA<MaterialPage<dynamic>>()
      .having((p) => p.child, '', isA<InfosClientPage>());

  test('Redirection liste client', () {
    const appState = AppState(
      etapeApp: EtapeApp.listeClient,
    );
    expect(
      onGenerateAppViewPages(appState: appState),
      [
        pageListeClient,
      ],
    );
  });

  test('Redirection connexion', () {
    const appState = AppState();
    expect(
      onGenerateAppViewPages(appState: appState),
      [
        pageConnexion,
      ],
    );
  });
}
