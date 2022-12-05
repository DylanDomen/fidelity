part of 'creer_client_cubit.dart';

class CreerClientState extends Equatable {
  final FormzStatus status;
  const CreerClientState({
    this.status = FormzStatus.pure,
  });

  CreerClientState copywith({FormzStatus? status}){
    return CreerClientState(status: status ?? this.status);
  }

  @override
  List<Object> get props => [status];
}
