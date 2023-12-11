import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  final int couterValue;
  const CounterState({required this.couterValue});

  @override
  List<Object> get props => [couterValue];
}

class CounterInitilias extends CounterState {
  CounterInitilias() : super(couterValue: 0);
}

// Implemento listener

class IncrementState extends CounterState {
  IncrementState(int increasedValue) : super(couterValue: increasedValue);
}

class DecrementState extends CounterState {
  DecrementState(int decreasedValue) : super(couterValue: decreasedValue);
}
