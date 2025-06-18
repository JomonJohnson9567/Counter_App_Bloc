part of 'bloc_bloc.dart';

@immutable
abstract class CounterState {
  final int count;
  CounterState({this.count = 0});
}

class counterInitialState extends CounterState {
  counterInitialState() : super(count: 0);
}

class counterIncrementState extends CounterState {
  counterIncrementState(int IncreasedCounter) : super(count: IncreasedCounter);
}

class counterDecrementState extends CounterState {
  counterDecrementState(int DecreasedCounter) : super(count: DecreasedCounter);
}

class counterResetState extends CounterState {
  counterResetState() : super(count: 0);
}