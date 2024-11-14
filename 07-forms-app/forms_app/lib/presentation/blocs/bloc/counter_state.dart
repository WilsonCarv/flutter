part of 'counter_bloc.dart';



final class CounterState  {
  final int counter;
  final int transactionCount;

  CounterState({
    this.counter = 10,
    this.transactionCount = 0,
  });
  CounterState copyWith({
    int? counter,
    int? transactionCount,
  }) =>
      CounterState(
          counter: counter ?? this.counter,
          transactionCount: transactionCount ?? this.transactionCount);
}
