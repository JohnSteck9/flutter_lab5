part of 'test_cubit.dart';

// @immutable
// abstract class TestState {}

// class TestInitial extends TestState {}

class TestState {
  int counterValue;
  bool ?wasIncremented;

  TestState({
    required this.counterValue,
    this.wasIncremented,
  });
}