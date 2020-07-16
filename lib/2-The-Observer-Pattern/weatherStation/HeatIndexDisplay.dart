import 'package:design_patterns_dart/2-The-Observer-Pattern/weatherStation/DisplayElement.dart';
import 'package:design_patterns_dart/2-The-Observer-Pattern/weatherStation/Observer.dart';
import 'package:design_patterns_dart/2-The-Observer-Pattern/weatherStation/WeatherData.dart';
import 'package:design_patterns_dart/2-The-Observer-Pattern/weatherStation/DisplayElement.dart';

class HeatIndexDisplay implements Observer, DisplayElement {
  WeatherData _weatherData;
  String _heatIndex;

  HeatIndexDisplay(WeatherData weatherData) {
    this._weatherData = weatherData;
    _weatherData.registerObserver(this);
  }

  @override
  void display() {
    print('Heat index is $_heatIndex');
  }

  @override
  void update(double temp, double humidity, double pressure) {
    _heatIndex = _computeHeatIndex(temp, humidity).toStringAsFixed(5);
    display();
  }

  double _computeHeatIndex(double t, double rh) {
    double index = ((16.923 +
            (0.185212 * t) +
            (5.37941 * rh) -
            (0.100254 * t * rh) +
            (0.00941695 * (t * t)) +
            (0.00728898 * (rh * rh)) +
            (0.000345372 * (t * t * rh)) -
            (0.000814971 * (t * rh * rh)) +
            (0.0000102102 * (t * t * rh * rh)) -
            (0.000038646 * (t * t * t)) +
            (0.0000291583 * (rh * rh * rh)) +
            (0.00000142721 * (t * t * t * rh)) +
            (0.000000197483 * (t * rh * rh * rh)) -
            (0.0000000218429 * (t * t * t * rh * rh)) +
            0.000000000843296 * (t * t * rh * rh * rh)) -
        (0.0000000000481975 * (t * t * t * rh * rh * rh)));
    return index;
  }
}
