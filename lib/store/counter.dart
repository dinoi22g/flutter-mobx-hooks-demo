import 'package:mobx/mobx.dart';

part 'counter.g.dart';


class Counter = CounterBase with _$Counter;

abstract class CounterBase with Store {
  @observable
  int count = 0;

  @action fetch() {
    count = 10;
  }

  @action
  void increment() {
    count++;
  }

  @action
  void decrement() {
    count--;
  }
}