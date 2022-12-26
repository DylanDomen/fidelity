part of 'connexion_cubit.dart';

class ConnexionState extends Equatable {
  const ConnexionState({
    this.status = FormzStatus.pure,
    this.mail = const Email.pure(),
    this.motDePasse = const MotDePasse.pure(),
    this.messageErreur = '',
  });
  final FormzStatus status;
  final Email mail;
  final MotDePasse motDePasse;
  final String messageErreur;

  ConnexionState copywith({
    FormzStatus? status,
    Email? mail,
    MotDePasse? motDePasse,
    String? messageErreur,
  }) {
    return ConnexionState(
      status: status ?? this.status,
      mail: mail ?? this.mail,
      motDePasse: motDePasse ?? this.motDePasse,
      messageErreur: messageErreur ?? this.messageErreur,
    );
  }

  @override
  List<Object> get props => [
        status,
        mail,
        motDePasse,
        messageErreur,
      ];
}
