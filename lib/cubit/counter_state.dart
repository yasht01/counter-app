part of 'counter_cubit.dart';

//TODO: Improve this
@immutable
abstract class CounterState {
  late final int counter1;
  late final int counter2;
  late final int counter3;
}

class CounterInitial extends CounterState {
  CounterInitial();
}

class Counter1Incremented extends CounterState {
  final int value;

  Counter1Incremented(this.value);
}

class Counter2Incremented extends CounterState {
  final int value;

  Counter2Incremented(this.value);
}

class Counter3Incremented extends CounterState {
  final int value;

  Counter3Incremented(this.value);
}
