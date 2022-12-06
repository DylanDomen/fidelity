part of 'liste_client_cubit.dart';

class ListeClientState extends Equatable {
  const ListeClientState({
    this.listeClients = const [],
    this.listeClientsFiltre = const [],
    this.nom = const ChampTexte.pure(),
    this.mail = const Email.pure(),
    this.mobile = const Mobile.pure(),
  });

  final List<Utilisateur> listeClients;
  final List<Utilisateur> listeClientsFiltre;
  final ChampTexte nom;
  final Email mail;
  final Mobile mobile;

  ListeClientState copywith({
    List<Utilisateur>? listeClients,
    List<Utilisateur>? listeClientsFiltre,
    ChampTexte? nom,
    Email? mail,
    Mobile? mobile,
  }) {
    return ListeClientState(
      listeClients: listeClients ?? this.listeClients,
      listeClientsFiltre: listeClientsFiltre ?? this.listeClientsFiltre,
      nom: nom ?? this.nom,
      mail: mail ?? this.mail,
      mobile: mobile ?? this.mobile,
    );
  }

  @override
  List<Object> get props => [
        listeClients,
        listeClientsFiltre,
        nom,
        mail,
        mobile,
      ];
}
