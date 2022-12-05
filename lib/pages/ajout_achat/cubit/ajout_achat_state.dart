part of 'ajout_achat_cubit.dart';

class AjoutAchatState extends Equatable {
  final FormzStatus status;
  const AjoutAchatState({
    this.status = FormzStatus.pure,
  });

  AjoutAchatState copywith({FormzStatus? status}){
    return AjoutAchatState(status: status ?? this.status);
  }

  @override
  List<Object> get props => [status];
}
