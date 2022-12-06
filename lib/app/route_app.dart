import 'package:fidelity/app/bloc/app_bloc.dart';
import 'package:fidelity/pages/connexion/view/connexion_page.dart';
import 'package:fidelity/pages/infos_client/infos_client.dart';
import 'package:fidelity/pages/liste_client/liste_client.dart';
import 'package:flutter/material.dart';

List<Page<dynamic>> onGenerateAppViewPages({
  required AppState appState,
  List<Page<dynamic>>? pages,
}) {
  print('switch');
  switch (appState.etapeApp) {
    case EtapeApp.connexion:
      return [ConnexionPage.page()];
    case EtapeApp.listeClient:
      print('route');
      return [ListeClientPage.page()];
    case EtapeApp.infosClient:
      return [InfosClientPage.page()];
  }
}
