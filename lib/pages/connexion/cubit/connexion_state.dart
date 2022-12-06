part of 'connexion_cubit.dart';

class ConnexionState extends Equatable {
  const ConnexionState({
    this.status = FormzStatus.pure,
    this.mail = const Email.pure(),
    this.motDePasse = const MotDePasse.pure(),
  });
  final FormzStatus status;
  final Email mail;
  final MotDePasse motDePasse;

  ConnexionState copywith({
    FormzStatus? status,
    Email? mail,
    MotDePasse? motDePasse,
  }) {
    return ConnexionState(
      status: status ?? this.status,
      mail: mail ?? this.mail,
      motDePasse: motDePasse ?? this.motDePasse,
    );
  }

  @override
  List<Object> get props => [
        status,
        mail,
        motDePasse,
      ];
}
