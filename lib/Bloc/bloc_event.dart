part of 'bloc_bloc.dart';

@immutable
abstract class CounterEvent {

}
class CounterIncrementEvent extends CounterEvent {
  final int incrementValue;

  CounterIncrementEvent(this.incrementValue);
}
class CounterDecrementEvent extends CounterEvent {
  final int decrementValue;

  CounterDecrementEvent(this.decrementValue);
}

class CounterResetEvent extends CounterEvent {
  CounterResetEvent();
}