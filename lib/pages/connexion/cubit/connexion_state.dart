part of 'connexion_cubit.dart';

class ConnexionState extends Equatable {
  final FormzStatus status;
  const ConnexionState({
    this.status = FormzStatus.pure,
  });

  ConnexionState copywith({FormzStatus? status}){
    return ConnexionState(status: status ?? this.status);
  }

  @override
  List<Object> get props => [status];
}
