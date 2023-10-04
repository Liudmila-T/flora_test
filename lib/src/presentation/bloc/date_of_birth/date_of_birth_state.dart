part of 'date_of_birth_bloc.dart';

abstract class DateOfBirthState extends Equatable{
  const DateOfBirthState();

  @override
  List<Object> get props => [];
}

class EmptyDateOfBirthState extends DateOfBirthState {
}

class SelectDateOfBirthState extends DateOfBirthState {
  const SelectDateOfBirthState({required this.year});

  final int year;

  @override
  List<Object> get props => [year];
}
