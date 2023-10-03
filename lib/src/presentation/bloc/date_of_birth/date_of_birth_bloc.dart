import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'date_of_birth_event.dart';

part 'date_of_birth_state.dart';

@injectable
@factoryMethod
class DateOfBirthBloc extends Bloc<DateOfBirthEvent, DateOfBirthState> {
  DateOfBirthBloc() : super(EmptyDateOfBirthState()) {
    on<SelectDateOfBirthEvent>(
        (event, emit) => emit(SelectDateOfBirthState(year: event.year)));
  }
}
