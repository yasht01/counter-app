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
            //TODO: use buildWhen: property
            builder: (context, state) {
              return Text(
                '${context.read<CounterCubit>().counter3}',
                style: Theme.of(context).textTheme.headline4,
              );
            },
          ),
          OutlinedButton(
            onPressed: () => context.read<CounterCubit>().incrementCounter3(),
            child: const Text('Increment Me'),
          ),
        ],
      ),
    );
  }
}
