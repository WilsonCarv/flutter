part of 'counter_bloc.dart';

@immutable
sealed class CounterEvent {}

class CounterIncrement extends CounterEvent {
  final int value;
  CounterIncrement(this.value);
}

class CounterReset extends CounterEvent {}
