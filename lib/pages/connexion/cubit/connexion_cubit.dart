import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

part 'connexion_state.dart';

class ConnexionCubit extends Cubit<ConnexionState> {

  ConnexionCubit() : super(const ConnexionState());

  
  void submit(){
    if (state.status.isValidated) {
        emit(state.copywith(status: FormzStatus.submissionInProgress));
        emit(state.copywith(status: FormzStatus.submissionSuccess));
    }
  }
  
}
