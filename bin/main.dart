void main() {
  final order = Order("12345", 250.0);
  order.createOrder();
}

class Order {
  final String orderId;
  final double amount;

  Order(this.orderId, this.amount);

  void createOrder() {
    print("Order $orderId created with amount \$$amount");
    _saveOrderToDatabase();
    _sendOrderConfirmation();
    _logOrderCreation();
  }

  void _saveOrderToDatabase() {
    print("Saving order $orderId to database");
  }

  void _sendOrderConfirmation() {
    print("Sending confirmation for order $orderId");
  }

  void _logOrderCreation() {
    print("Logging order $orderId creation");
  }
}
