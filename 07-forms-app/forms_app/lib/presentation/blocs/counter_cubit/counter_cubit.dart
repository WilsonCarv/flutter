import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterInitial( counter: 0, transactionCount: 0 ));

  void increment(int value) => emit(state.copyWith(counter: state.counter + value, transactionCount: state.transactionCount + 1));

  void decrement(int value) => emit(state.copyWith(counter: state.counter - value, transactionCount: state.transactionCount + 1));

  void reset() => emit(state.copyWith(counter: 0));
}
