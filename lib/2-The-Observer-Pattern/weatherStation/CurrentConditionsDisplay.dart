import 'package:design_patterns_dart/2-The-Observer-Pattern/weatherStation/DisplayElement.dart';
import 'package:design_patterns_dart/2-The-Observer-Pattern/weatherStation/Observer.dart';
import 'package:design_patterns_dart/2-The-Observer-Pattern/weatherStation/WeatherData.dart';

class CurrentConditionsDisplay implements Observer, DisplayElement {
  double _temperature;
  double _humidity;
  WeatherData _weatherData;

  CurrentConditionsDisplay(WeatherData weatherData) {
    this._weatherData = weatherData;
    _weatherData.registerObserver(this);
  }
  @override
  void update(double temp, double humidity, double pressure) {
    _temperature = temp;
    _humidity = humidity;
    display();
  }

  @override
  void display() {
    print(
        "Current condition: ${_temperature}F degrees and $_humidity% humidity");
  }
}
