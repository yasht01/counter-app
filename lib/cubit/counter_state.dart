part of 'counter_cubit.dart';

@immutable
abstract class CounterState {
}

class CounterInitial extends CounterState {
  final counter1 = 0;
  final counter2 = 0;
  final counter3 = 0;
}
