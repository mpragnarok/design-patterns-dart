import 'package:design_patterns_dart/3-The-Decorator-Pattern/Starbuzz/Size.dart';

abstract class Beverage {
  Size size = Size.TALL;
  String description = 'Unknown Beverage';

  String getDescription() => description;

  double cost();

  void setSize(Size size) {
    this.size = size;
  }

  Size getSize() => size;
}
