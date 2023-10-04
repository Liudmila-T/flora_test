part of 'choice_bloc.dart';

abstract class ChoiceEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class TrackPeriodChoiceEvent extends ChoiceEvent {}

class GetPregnantChoiceEvent extends ChoiceEvent {}
