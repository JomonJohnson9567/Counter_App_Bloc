import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bloc_event.dart';
part 'bloc_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(counterInitialState()) {
    on<CounterIncrementEvent>((event, emit) {
      emit(counterIncrementState(state.count + 1));
    });
    on<CounterDecrementEvent>((event, emit) {
      emit(counterDecrementState(state.count - 1));
    });
    on<CounterResetEvent>((event, emit) {
      emit(counterResetState());
    });
  }
}
