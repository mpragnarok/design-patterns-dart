import '../behaviors/FlyBehavior.dart';

class FlyNoWay implements FlyBehavior {
  @override
  void fly() {
    print("I can't fly");
  }
}
