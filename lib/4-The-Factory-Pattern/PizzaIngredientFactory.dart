import 'Dough.dart';
import 'Sauce.dart';
import 'Cheese.dart';
import 'Veggies.dart';
import 'Pepperoni.dart';
import 'Clams.dart';

abstract class PizzaIngredientFactory {
  Dough createDough();
  Sauce createSauce();
  Cheese createCheese();
  List<Veggies> createVeggies();
  Pepperoni createPepperoni();
  Clams createClam();
}
