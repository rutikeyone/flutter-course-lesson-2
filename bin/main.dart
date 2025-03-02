// Абстракция (интерфейс)
abstract class WaterSource {
  void getWater();
}

// Низкоуровневый модуль для бака
class Tank implements WaterSource {
  @override
  void getWater() {
    print("Water from the tank");
  }
}

// Низкоуровневый модуль для водопровода
class WaterPipe implements WaterSource {
  @override
  void getWater() {
    print("Water from the water pipe");
  }
}

// Высокоуровневый модуль
class CoffeeMachine {
  final WaterSource waterSource;

  // Внедрение зависимости через конструктор
  const CoffeeMachine(this.waterSource);

  void makeCoffee() {
    waterSource.getWater();
    print("Coffee is ready!");
  }
}

void main() {
  // Используем Tank
  final WaterSource tank = Tank();
  final coffeeMachineWithTank = CoffeeMachine(tank);
  coffeeMachineWithTank.makeCoffee();

  // Используем WaterPipe
  final WaterSource waterPipe = WaterPipe();
  final coffeeMachineWithPipe = CoffeeMachine(waterPipe);
  coffeeMachineWithPipe.makeCoffee();
}