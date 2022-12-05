import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

part 'creer_client_state.dart';

class CreerClientCubit extends Cubit<CreerClientState> {

  CreerClientCubit() : super(const CreerClientState());

  
  void submit(){
    if (state.status.isValidated) {
        emit(state.copywith(status: FormzStatus.submissionInProgress));
        emit(state.copywith(status: FormzStatus.submissionSuccess));
    }
  }
  
}
