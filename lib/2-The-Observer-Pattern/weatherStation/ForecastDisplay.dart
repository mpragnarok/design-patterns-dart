import 'package:design_patterns_dart/2-The-Observer-Pattern/weatherStation/DisplayElement.dart';
import 'package:design_patterns_dart/2-The-Observer-Pattern/weatherStation/Observer.dart';
import 'package:design_patterns_dart/2-The-Observer-Pattern/weatherStation/WeatherData.dart';

class ForecastDisplay implements Observer, DisplayElement {
  double _currentPressure = 29.92;
  double _lastPressure;
  WeatherData _weatherData;

  ForecastDisplay(WeatherData weatherData) {
    this._weatherData = weatherData;
    _weatherData.registerObserver(this);
  }

  @override
  void update(double temp, double humidity, double pressure) {
    _lastPressure = _currentPressure;
    _currentPressure = pressure;
    display();
  }

  @override
  void display() {
    print('Forecast: ');
    if (_currentPressure > _lastPressure) {
      print('Improving weather on the way!');
    } else if (_currentPressure == _lastPressure) {
      print('More of the same');
    } else if (_currentPressure < _lastPressure) {
      print('Watch out for cooler, rainy weather');
    }
  }
}
