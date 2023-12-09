import 'package:mobx/mobx.dart';

part 'counter.g.dart';


class Counter = CounterBase with _$Counter;

abstract class CounterBase with Store {
  @observable
  int count = 0;

  @action
  void fetch() {
    count = 10;
  }

  // 當數字>20時繼續執行下方print
  void asyncCountLt20() async{
    await asyncWhen((_) => count > 20);
    print('Count>20');
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