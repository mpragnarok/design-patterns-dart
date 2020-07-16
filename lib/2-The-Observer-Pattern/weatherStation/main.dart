import 'package:design_patterns_dart/2-The-Observer-Pattern/weatherStation/CurrentConditionsDisplay.dart';
import 'package:design_patterns_dart/2-The-Observer-Pattern/weatherStation/ForecastDisplay.dart';
import 'package:design_patterns_dart/2-The-Observer-Pattern/weatherStation/HeatIndexDisplay.dart';
import 'package:design_patterns_dart/2-The-Observer-Pattern/weatherStation/StatisticsDisplay.dart';
import 'package:design_patterns_dart/2-The-Observer-Pattern/weatherStation/WeatherData.dart';

void main() {
  WeatherData weatherData = new WeatherData();
  CurrentConditionsDisplay currentDisplay =
      new CurrentConditionsDisplay(weatherData);
  StatisticsDisplay statisticsDisplay = new StatisticsDisplay(weatherData);
  ForecastDisplay forecastDisplay = new ForecastDisplay(weatherData);
  HeatIndexDisplay heatIndexDisplay = new HeatIndexDisplay(weatherData);
  weatherData.setMeasurements(80, 65, 30.4);
  weatherData.setMeasurements(82, 70, 29.2);
  weatherData.setMeasurements(78, 90, 29.2);
}
