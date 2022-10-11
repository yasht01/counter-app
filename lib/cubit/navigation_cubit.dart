import 'package:bloc/bloc.dart';

class NavigationCubit extends Cubit<int> {
  NavigationCubit({this.currentIndex = 0}) : super(0);

  int currentIndex;

  modifyIndex(int newValue) {
    currentIndex = newValue;
    emit(currentIndex);
  }
}
