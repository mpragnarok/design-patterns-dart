import 'behaviors/FlyBehavior.dart';
import 'behaviors/QuackBehavior.dart';

abstract class Duck {
  FlyBehavior flyBehavior;
  QuackBehavior quackBehavior;
  Duck({this.flyBehavior, this.quackBehavior});

  void display();

  setFlyBehavior(FlyBehavior fb) {
    this.flyBehavior = fb;
  }

  setQuackBehavior(QuackBehavior qb) {
    this.quackBehavior = qb;
  }

  void performFly() {
    flyBehavior.fly();
  }

  void performQuack() {
    quackBehavior.quack();
  }

  void swim() {
    print('All ducks float, even decoys!');
  }
}
