import 'Subject.dart';
import 'Observer.dart';

class WeatherData implements Subject {
  List<Observer> _observers;
  double _temperature;
  double _humidity;
  double _pressure;

  WeatherData([List<Observer> observers]) {
    _observers = observers ?? [];
  }

  @override
  void registerObserver(Observer o) {
    _observers.add(o);
  }

  @override
  void removeObserver(Observer o) {
    if (_observers.contains(o)) {
      _observers.remove(o);
    }
  }

  @override
  void notifyObservers() {
    for (var observer in _observers) {
      observer.update(_temperature, _humidity, _pressure);
    }
  }

  void measurementsChanged() {
    notifyObservers();
  }

  void setMeasurements(double temperature, double humidity, double pressure) {
    _temperature = temperature;
    _humidity = humidity;
    _pressure = pressure;
    measurementsChanged();
  }
}
