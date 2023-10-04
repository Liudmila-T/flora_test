part of 'date_of_birth_bloc.dart';

abstract class DateOfBirthEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class SelectDateOfBirthEvent extends DateOfBirthEvent {
  SelectDateOfBirthEvent({required this.year});

  final int year;

  @override
  List<Object> get props => [year];
}
