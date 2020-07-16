import 'Duck.dart';
import 'behaviors/FlyBehavior.dart';
import 'behaviors/QuackBehavior.dart';

class MallardDuck extends Duck {
  MallardDuck(FlyBehavior flyBehavior, QuackBehavior quackBehavior)
      : super(flyBehavior: flyBehavior, quackBehavior: quackBehavior);
  @override
  void display() {
    print("It's Mallard duck!");
  }
}
