import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/counter_cubit.dart';
import 'cubit/navigation_cubit.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => NavigationCubit(),
          ),
          BlocProvider(
            create: (context) => CounterCubit(),
          ),
        ],
        child: const HomeScreen(title: 'Counter App'),
      ),
    );
  }
}
