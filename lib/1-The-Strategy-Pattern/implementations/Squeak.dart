import '../behaviors/QuackBehavior.dart';

class Squeak implements QuackBehavior {
  @override
  void quack() {
    print('Squeak');
  }
}
