import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/counter_cubit.dart';

class CounterScreen2 extends StatelessWidget {
  const CounterScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Counter 2',
            style: Theme.of(context).textTheme.headline4,
          ),
          BlocBuilder<CounterCubit, CounterState>(
            buildWhen: (previous, current) => current is Counter2Incremented,
            builder: (context, state) {
              return Text(
                'Count: ${context.read<CounterCubit>().counter2}',
                style: Theme.of(context).textTheme.headline5,
              );
            },
          ),
          OutlinedButton(
            onPressed: () => context.read<CounterCubit>().incrementCounter2(),
            child: const Text('Increment Me'),
          ),
        ],
      ),
    );
  }
}
