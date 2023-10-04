import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'choice_event.dart';

part 'choice_state.dart';

@singleton
class ChoiceBloc extends Bloc<ChoiceEvent, ChoiceState> {
  ChoiceBloc() : super(ChoiceState.empty) {
    on<TrackPeriodChoiceEvent>((event, emit) => emit(ChoiceState.trackPeriod));
    on<GetPregnantChoiceEvent>((event, emit) => emit(ChoiceState.getPregnant));
  }
}
