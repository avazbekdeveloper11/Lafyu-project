import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'register_page_state.dart';

class RegisterPageCubit extends Cubit<RegisterPageState> {
  RegisterPageCubit() : super(RegisterPageInitial());
}
