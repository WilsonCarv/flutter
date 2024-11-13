import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forms_app/presentation/blocs/counter_cubit/counter_cubit.dart';

class CubitScreen extends StatelessWidget {
  const CubitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: const CubitCounterView(),
    );
  }
}

class CubitCounterView extends StatelessWidget {
  const CubitCounterView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final counterState = context.watch<CounterCubit>().state;
    return Scaffold(
      appBar: AppBar(
        title:  Text('Cubits transactions ${counterState.transactionCount}'),
        actions: [
          IconButton(
            onPressed: () => {
              context.read<CounterCubit>().reset(),
            },
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, CounterState>(
          builder: (context, state) {
            return Text('Counter value: ${state.counter}');
          },
        ),
      ),
      floatingActionButton:
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        FloatingActionButton(
          onPressed: () => {
            context.read<CounterCubit>().increment(1),
          },
          heroTag: '1',
          child: const Text('+1'),
        ),
        const SizedBox(height: 15),
        FloatingActionButton(
          onPressed: () => {
            context.read<CounterCubit>().increment(2),
          },
          heroTag: '2',
          child: const Text('+2'),
        ),
        const SizedBox(height: 15),
        FloatingActionButton(
          onPressed: () => {
             context.read<CounterCubit>().increment(3),
          },
          heroTag: '3',
          child: const Text('+3'),
        )
      ]),
    );
  }
}
