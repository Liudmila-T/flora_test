import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'choice_event.dart';

part 'choice_state.dart';

@injectable
@factoryMethod
class ChoiceBloc extends Bloc<ChoiceEvent, ChoiceState> {
  ChoiceBloc() : super(EmptyChoiceState()) {
    on<TrackPeriodChoiceEvent>((event, emit) => emit(TrackPeriodChoiceState()));
    on<GetPregnantChoiceEvent>((event, emit) => emit(GetPregnantChoiceState()));
  }
}
