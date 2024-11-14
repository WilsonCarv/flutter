import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState()) {
    on<CounterIncrement>(_onCounterIncrement);
    on<CounterReset>(_onCounterReset);
  }
  void _onCounterIncrement(CounterIncrement event, Emitter<CounterState> emit) {
    emit(state.copyWith(
        counter: state.counter + event.value,
        transactionCount: state.transactionCount + 1));
  }
  void _onCounterReset(CounterReset event, Emitter<CounterState> emit) {
    emit(state.copyWith(counter: 0));
  }
}
