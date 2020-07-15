import 'package:design_patterns_dart/1-Testing-the-Duck-Code/behaviors/FlyBehavior.dart';
import 'package:design_patterns_dart/1-Testing-the-Duck-Code/behaviors/QuackBehavior.dart';

import 'Duck.dart';

class ModelDuck extends Duck {
  ModelDuck(FlyBehavior flyBehavior, QuackBehavior quackBehavior)
      : super(flyBehavior: flyBehavior, quackBehavior: quackBehavior);

  @override
  void display() {
    print("I'm a model duck");
  }
}
