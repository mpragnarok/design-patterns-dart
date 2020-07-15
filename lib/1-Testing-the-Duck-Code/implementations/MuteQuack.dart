import '../behaviors/QuackBehavior.dart';

class MuteQuack implements QuackBehavior {
  @override
  void quack() {
    print("<< Silence >>");
  }
}
