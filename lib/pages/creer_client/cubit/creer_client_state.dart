part of 'creer_client_cubit.dart';

class CreerClientState extends Equatable {
  const CreerClientState({
    this.status = FormzStatus.pure,
    this.nom = const ChampTexte.pure(),
    this.prenom = const ChampTexte.pure(),
    this.mail = const Email.pure(),
    this.mobile = const Mobile.pure(),
    this.numCarteFidelite = const ChampTexte.pure(),
  });
  final FormzStatus status;
  final ChampTexte nom;
  final ChampTexte prenom;
  final Email mail;
  final Mobile mobile;
  final ChampTexte numCarteFidelite;

  CreerClientState copywith({
    FormzStatus? status,
    ChampTexte? nom,
    ChampTexte? prenom,
    Email? mail,
    Mobile? mobile,
    ChampTexte? numCarteFidelite,
  }) {
    return CreerClientState(
      status: status ?? this.status,
      nom: nom ?? this.nom,
      prenom: prenom ?? this.prenom,
      mail: mail ?? this.mail,
      mobile: mobile ?? this.mobile,
      numCarteFidelite: numCarteFidelite ?? this.numCarteFidelite,
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
      ];
}
