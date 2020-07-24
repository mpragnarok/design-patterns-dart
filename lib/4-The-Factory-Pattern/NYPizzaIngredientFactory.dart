import 'package:design_patterns_dart/4-The-Factory-Pattern/Garlic.dart';
import 'package:design_patterns_dart/4-The-Factory-Pattern/Mushroom.dart';
import 'package:design_patterns_dart/4-The-Factory-Pattern/PizzaIngredientFactory.dart';
import 'ThinCrustDough.dart';
import 'MarinaraSauce.dart';
import 'ReggianoCheese.dart';
import 'Veggies.dart';
import 'Garlic.dart';
import 'Onion.dart';
import 'Mushroom.dart';
import 'RedPepper.dart';
import 'SlicedPepperoni.dart';
import 'FreshClams.dart';

// Implements the interface for all ingredient factories
class NYPizzaIngredientFactory implements PizzaIngredientFactory {
  @override
  createDough() {
    return new ThinCrustDough();
  }

  @override
  createSauce() {
    return new MarinaraSauce();
  }

  @override
  createCheese() {
    return new ReggianoCheese();
  }

  @override
  List<Veggies> createVeggies() {
    List<Veggies> veggies = [
      new Garlic(),
      new Onion(),
      new Mushroom(),
      new RedPepper()
    ];
    return veggies;
  }

  @override
  createPepperoni() {
    return new SlicedPepperoni();
  }

  @override
  createClam() {
    return new FreshClams();
  }
}
