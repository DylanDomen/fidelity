import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fidelity/models/utilisateur.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const AppState()) {
    on<Connexion>(_connexionUtilisateur);
    on<Deconnexion>(_deconnexionUtilisateur);
    on<RedirectionListeClient>(_redirectionListeClient);
    on<RedirectionInfosClient>(_redirectionInfosClient);
  }

  FutureOr<void> _connexionUtilisateur(
    Connexion event,
    Emitter<AppState> emit,
  ) {
    emit(
      state.copywith(etapeApp: EtapeApp.listeClient),
    );
  }

  FutureOr<void> _deconnexionUtilisateur(
    Deconnexion event,
    Emitter<AppState> emit,
  ) {
    emit(
      state.copywith(etapeApp: EtapeApp.connexion),
    );
  }

  FutureOr<void> _redirectionListeClient(
    RedirectionListeClient event,
    Emitter<AppState> emit,
  ) {
    emit(
      state.copywith(etapeApp: EtapeApp.listeClient),
    );
  }

  FutureOr<void> _redirectionInfosClient(
    RedirectionInfosClient event,
    Emitter<AppState> emit,
  ) {
    emit(
      state.copywith(
        etapeApp: EtapeApp.infosClient,
        utilisateur: event.utilisateur,
      ),
    );
  }
}
