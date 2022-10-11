import 'package:counter_app/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/navigation_cubit.dart';
import 'counter1_screen.dart';
import 'counter2_screen.dart';
import 'counter3_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: BlocBuilder<NavigationCubit, int>(
        builder: (context, state) {
          //TODO: Improve this
          if (state == 0) {
            return const CounterScreen1();
          }
          if (state == 1) {
            return const CounterScreen2();
          }
          return const CounterScreen3();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //TODO: Improve this
          int currentIndex = context.read<NavigationCubit>().currentIndex;

          if(currentIndex == 0) {
            context.read<CounterCubit>().incrementCounter1();
          }
          if(currentIndex == 1) {
            context.read<CounterCubit>().incrementCounter2();
          }
          if(currentIndex == 2) {
            context.read<CounterCubit>().incrementCounter3();
          }
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BlocBuilder<NavigationCubit, int>(
        builder: (context, state) {
          return BottomNavigationBar(
            currentIndex: state,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.looks_one),
                label: 'Counter 1',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.looks_two),
                label: 'Counter 2',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.looks_3),
                label: 'Counter 3',
              ),
            ],
            onTap: (value) =>
                context.read<NavigationCubit>().modifyIndex(value),
          );
        },
      ),
    );
  }
}
