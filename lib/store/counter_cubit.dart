import 'package:bloc/bloc.dart';
part 'counter_cubit_extension.dart';

class CounterState {
  int count = 0;

  CounterState({required this.count});
}

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(count: 5));
/* MOVED TO counter_cubit_extension.dart
  void increment() {
    emit(CounterState(count: state.count + 1));
  }
*/
  void decrement() {
    emit(CounterState(count: state.count - 1));
  }
}
