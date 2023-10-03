part of 'date_of_birth_bloc.dart';

abstract class DateOfBirthEvent {}

class SelectDateOfBirthEvent extends DateOfBirthEvent {
  SelectDateOfBirthEvent({required this.year});

  final int year;
}
