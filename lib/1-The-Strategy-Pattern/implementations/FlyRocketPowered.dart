import '../behaviors/FlyBehavior.dart';

class FlyRocketPowered implements FlyBehavior {
  @override
  void fly() {
    print("I'm flying with a rocket!");
  }
}
