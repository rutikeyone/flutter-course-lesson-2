// Низкоуровневый модуль
class Tank {
  void getWater() {
    print("Water from the tank");
  }
}

// Высокоуровневый модуль
class CoffeeMachine {
  final Tank tank = Tank(); // Жёсткая зависимость от Tank

  void makeCoffee() {
    tank.getWater();
    print("Coffee is ready!");
  }
}

void main() {
  final coffeeMachine = CoffeeMachine();
  coffeeMachine.makeCoffee();
}