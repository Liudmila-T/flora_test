import 'package:flutter_bloc/flutter_bloc.dart';

part 'choice_event.dart';

part 'choice_state.dart';

class ChoiceBloc extends Bloc<ChoiceEvent, ChoiceState> {
  ChoiceBloc() : super(EmptyChoiceState()) {
    on<TrackPeriodChoiceEvent>((event, emit) => emit(TrackPeriodChoiceState()));
    on<TrackPeriodChoiceEvent>((event, emit) => emit(GetPregnantChoiceState()));
  }
}
