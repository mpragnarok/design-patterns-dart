import 'behaviors/FlyBehavior.dart';
import 'behaviors/QuackBehavior.dart';
import 'Duck.dart';

class ModelDuck extends Duck {
  ModelDuck(FlyBehavior flyBehavior, QuackBehavior quackBehavior)
      : super(flyBehavior: flyBehavior, quackBehavior: quackBehavior);

  @override
  void display() {
    print("I'm a model duck");
  }
}
