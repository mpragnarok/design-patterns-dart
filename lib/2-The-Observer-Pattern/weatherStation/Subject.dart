import 'package:design_patterns_dart/2-The-Observer-Pattern/weatherStation/Observer.dart';

abstract class Subject {
  void registerObserver(Observer o) {}
  void removeObserver(Observer o) {}
  void notifyObservers();
}
