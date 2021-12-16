import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'test_state.dart';

// class TestCubit extends Cubit<TestState> {
//   TestCubit() : super(TestInitial());
// }

// part 'counter_state.dart';

class CounterCubit extends Cubit<TestState> {
  CounterCubit() : super(TestState(counterValue: 0));

  void increment() => emit(
      TestState(counterValue: state.counterValue + 1, wasIncremented: true));

  void decrement() => emit(TestState(
      counterValue: state.counterValue - 1, wasIncremented: false));
}