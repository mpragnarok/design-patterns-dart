import 'package:design_patterns_dart/4-The-Factory-Pattern/PizzaIngredientFactory.dart';
import 'package:design_patterns_dart/4-The-Factory-Pattern/Veggies.dart';
import 'ThickCrustDough.dart';
import 'PlumTomatoSauce.dart';
import 'MozzarellaCheese.dart';
import 'Veggies.dart';
import 'Spinach.dart';
import 'Eggplant.dart';
import 'BlackOlives.dart';
import 'SlicedPepperoni.dart';
import 'FrozenClams.dart';

class ChicagoPizzaIngredientFactory implements PizzaIngredientFactory {
  @override
  createDough() {
    return new ThickCrustDough();
  }

  @override
  createSauce() {
    return new PlumTomatoSauce();
  }

  @override
  createCheese() {
    return new MozzarellaCheese();
  }

  @override
  List<Veggies> createVeggies() {
    List<Veggies> veggies = [new BlackOlives(), new Spinach(), new Eggplant()];
    return veggies;
  }

  @override
  createPepperoni() {
    return new SlicedPepperoni();
  }

  @override
  createClam() {
    return new FrozenClams();
  }
}
