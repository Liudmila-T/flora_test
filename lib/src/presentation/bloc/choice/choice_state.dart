part of 'choice_bloc.dart';

abstract class ChoiceState {
  ChoiceState();
}

class EmptyChoiceState extends ChoiceState {}

class TrackPeriodChoiceState extends ChoiceState {}

class GetPregnantChoiceState extends ChoiceState {}
