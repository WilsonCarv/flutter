import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forms_app/presentation/blocs/bloc/counter_bloc.dart';

class BlockScreen extends StatelessWidget {
  const BlockScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => CounterBloc(), child: const BlocCounterView());
  }
}

class BlocCounterView extends StatelessWidget {
  const BlocCounterView({
    super.key,
  });

  void increment(BuildContext context, [int value = 1]) {
    context.read<CounterBloc>().add(CounterIncrement(value));
  }
  void reset(BuildContext context) {
    context.read<CounterBloc>().add(CounterReset());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: context.select((CounterBloc counterBloc) =>
            Text('Cubits transactions ${counterBloc.state.transactionCount}')),
        actions: [
          IconButton(
            onPressed: () => reset(context),
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
      body: Center(
        child: context.select((CounterBloc counterBloc) =>
            Text('Counter value: ${counterBloc.state.counter}')),
      ),
      floatingActionButton:
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        FloatingActionButton(
          onPressed: () => increment(context, 1),
          heroTag: '1',
          child: const Text('+1'),
        ),
        const SizedBox(height: 15),
        FloatingActionButton(
          onPressed: () => increment(context, 2),
          heroTag: '2',
          child: const Text('+2'),
        ),
        const SizedBox(height: 15),
        FloatingActionButton(
          onPressed:()=> increment(context, 3),
          heroTag: '3',
          child: const Text('+3'),
        )
      ]),
    );
  }
}
