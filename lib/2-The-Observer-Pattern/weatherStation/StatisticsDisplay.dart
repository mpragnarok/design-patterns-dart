import 'package:design_patterns_dart/2-The-Observer-Pattern/weatherStation/DisplayElement.dart';
import 'package:design_patterns_dart/2-The-Observer-Pattern/weatherStation/Observer.dart';
import 'package:design_patterns_dart/2-The-Observer-Pattern/weatherStation/WeatherData.dart';

class StatisticsDisplay implements Observer, DisplayElement {
  double _maxTemp = 0.0;
  double _minTemp = 200.0;
  double _tempSum = 0.0;
//  Dart default value is null
  int _numReadings = 0;
  WeatherData _weatherData;

  StatisticsDisplay(WeatherData weatherData) {
    this._weatherData = weatherData;
    _weatherData.registerObserver(this);
  }

  @override
  void update(double temp, double humidity, double pressure) {
    _tempSum += temp;
    _numReadings++;
    if (temp > _maxTemp) {
      _maxTemp = temp;
    }
    if (temp < _minTemp) {
      _minTemp = temp;
    }
    display();
  }

  @override
  void display() {
    print(
        "Avg/Max/Min temperature =  ${_tempSum / _numReadings}/$_maxTemp/$_minTemp");
  }
}
