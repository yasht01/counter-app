import 'package:bloc/bloc.dart';

class NavigationCubit extends Cubit<int> {
  NavigationCubit({this.currentIndex = 0}) : super(0);

  int currentIndex;

  void modifyIndex(int newValue) {
    currentIndex = newValue;
    emit(currentIndex);
  }

  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    print('${change.currentState} -> ${change.nextState}');
  }
}
