part of 'counter_cubit.dart';

// Flutter extensions are handled at compile time. Since CounterExtensions is
// a part of CounterCubit which extends Cubit that extends BlocBase, this
// extension should "technically" be a subclass of BlocBase.
extension CounterExtension on CounterCubit {
  void increment() {
    emit(CounterState(count: state.count + 1));
  }
}
