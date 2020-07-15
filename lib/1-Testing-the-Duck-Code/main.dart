import 'package:design_patterns_dart/1-Testing-the-Duck-Code/implementations/FlyNoWay.dart';
import 'package:design_patterns_dart/1-Testing-the-Duck-Code/implementations/FlyRocketPowered.dart';

import 'behaviors/FlyBehavior.dart';
import 'behaviors/QuackBehavior.dart';
import 'implementations/FlyWithWings.dart';
import 'implementations/Quack.dart';
import 'Duck.dart';
import 'MallardDuck.dart';
import 'ModelDuck.dart';

void main() {
  FlyBehavior flyWithWings = FlyWithWings();
  QuackBehavior quack = Quack();
  FlyBehavior flyNoWay = FlyNoWay();
  FlyBehavior flyRocketPowered = FlyRocketPowered();

  Duck mallard = MallardDuck(flyWithWings, quack);
  mallard.display();
  mallard.performFly();
  mallard.performQuack();

  Duck modelDuck = ModelDuck(flyNoWay, quack);
  modelDuck.performFly();
  modelDuck.setFlyBehavior(flyRocketPowered);
  modelDuck.performFly();
}
