void main() {
  final order = Order("12345", 250.0);
  order.createOrder();
}

class Order {
  final String orderId;
  final double amount;

  Order(this.orderId, this.amount);

  void createOrder() {
    print("Заказ с идентификатором $orderId был создан на сумму \$$amount");
    _saveOrderToDatabase();
    _sendOrderConfirmation();
    _logOrderCreation();
  }

  void _saveOrderToDatabase() {
    print("Сохранение данных о заказе с идентификатором $orderId в базу данных");
  }

  void _sendOrderConfirmation() {
    print("Отправка информации о заказе с идентификатором $orderId");
  }

  void _logOrderCreation() {
    print("Создание события о создании заказа с идентификатором $orderId");
  }
}
