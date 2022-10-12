import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/counter_cubit.dart';

class CounterScreen1 extends StatelessWidget {
  const CounterScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Counter 1',
            style: Theme.of(context).textTheme.headline4,
          ),
          BlocBuilder<CounterCubit, CounterState>(
            //TODO: use buildWhen: property
            builder: (context, state) {
              return Text(
                'Count: ${context.read<CounterCubit>().counter1}',
                style: Theme.of(context).textTheme.headline5,
              );
            },
          ),
          OutlinedButton(
            onPressed: () => context.read<CounterCubit>().incrementCounter1(),
            child: const Text('Increment Me'),
          ),
        ],
      ),
    );
  }
}
