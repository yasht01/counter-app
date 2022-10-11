import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/counter_cubit.dart';

class CounterScreen3 extends StatelessWidget {
  const CounterScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'You have pushed the button this 3 many times:',
          ),
          BlocBuilder<CounterCubit, CounterState>(
            builder: (context, state) {
              return Text(
                '$state',
                style: Theme.of(context).textTheme.headline4,
              );
            },
          ),
        ],
      ),
    );
  }
}
