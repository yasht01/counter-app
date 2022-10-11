import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit({
    this.counter1 = 0,
    this.counter2 = 0,
    this.counter3 = 0,
  }) : super(CounterInitial());

  int counter1;
  int counter2;
  int counter3;

  incrementCounter1() {
    counter1++;
    emit(Counter1Incremented(counter1));
  }

  incrementCounter2() {
    counter2++;
    emit(Counter1Incremented(counter2));
  }

  incrementCounter3() {
    counter3++;
    emit(Counter1Incremented(counter3));
  }
}
