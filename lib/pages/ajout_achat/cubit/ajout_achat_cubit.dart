import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

part 'ajout_achat_state.dart';

class AjoutAchatCubit extends Cubit<AjoutAchatState> {

  AjoutAchatCubit() : super(const AjoutAchatState());

  
  void submit(){
    if (state.status.isValidated) {
        emit(state.copywith(status: FormzStatus.submissionInProgress));
        emit(state.copywith(status: FormzStatus.submissionSuccess));
    }
  }
  
}
