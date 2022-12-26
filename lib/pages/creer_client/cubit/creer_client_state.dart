part of 'creer_client_cubit.dart';

class CreerClientState extends Equatable {
  const CreerClientState({
    this.status = FormzStatus.pure,
    this.nom = const ChampTexte.pure(),
    this.prenom = const ChampTexte.pure(),
    this.mail = const Email.pure(),
    this.mobile = const Mobile.pure(),
    this.numCarteFidelite = const ChampTexte.pure(),
    this.messageErreur = '',
  });
  final FormzStatus status;
  final ChampTexte nom;
  final ChampTexte prenom;
  final Email mail;
  final Mobile mobile;
  final ChampTexte numCarteFidelite;
  final String messageErreur;

  CreerClientState copywith({
    FormzStatus? status,
    ChampTexte? nom,
    ChampTexte? prenom,
    Email? mail,
    Mobile? mobile,
    ChampTexte? numCarteFidelite,
    String? messageErreur,
  }) {
    return CreerClientState(
      status: status ?? this.status,
      nom: nom ?? this.nom,
      prenom: prenom ?? this.prenom,
      mail: mail ?? this.mail,
      mobile: mobile ?? this.mobile,
      numCarteFidelite: numCarteFidelite ?? this.numCarteFidelite,
      messageErreur: messageErreur ?? this.messageErreur,
    );
  }

  @override
  List<Object> get props => [
        status,
        nom,
        prenom,
        mail,
        mobile,
        numCarteFidelite,
        messageErreur,
      ];
}
