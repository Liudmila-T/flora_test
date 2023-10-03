part of 'date_of_birth_bloc.dart';

abstract class DateOfBirthState {
  DateOfBirthState();
}

class EmptyDateOfBirthState extends DateOfBirthState {}

class SelectDateOfBirthState extends DateOfBirthState {
  SelectDateOfBirthState({required this.year});

  final int year;
}
