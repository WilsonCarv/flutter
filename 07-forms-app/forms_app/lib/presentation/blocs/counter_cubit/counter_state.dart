part of 'counter_cubit.dart';

@immutable
sealed class CounterState {
  final int counter;
  final int transactionCount;

  const CounterState({required this.counter, required this.transactionCount});
   copyWith({int? counter, int? transactionCount}) {
    return CounterInitial(
        counter: counter ?? this.counter,
        transactionCount: transactionCount ?? this.transactionCount);
  }
}

final class CounterInitial extends CounterState {
  const CounterInitial(
      {required super.counter, required super.transactionCount});

}
