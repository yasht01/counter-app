import 'package:bloc/bloc.dart';

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
    emit(Counter1Incremented());
  }

  incrementCounter2() {
    counter2++;
    emit(Counter2Incremented());
  }

  incrementCounter3() {
    counter3++;
    emit(Counter3Incremented());
  }

  @override
  void onChange(Change<CounterState> change) {
    super.onChange(change);
    print('${change.currentState} -> ${change.nextState}');
  }
}
