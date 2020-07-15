import 'package:design_patterns_dart/1-Testing-the-Duck-Code/behaviors/FlyBehavior.dart';

class FlyRocketPowered implements FlyBehavior {
  @override
  void fly() {
    print("I'm flying with a rocket!");
  }
}
