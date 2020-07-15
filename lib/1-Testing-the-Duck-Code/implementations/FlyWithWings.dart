import '../behaviors/FlyBehavior.dart';

class FlyWithWings implements FlyBehavior {
  @override
  void fly() {
    print("I'm flying!!");
  }
}
