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
    processPayment();
    sendOrderConfirmation();
  }

  void processPayment() {
    print("Processing payment for order $orderId with amount \$$amount");
  }

  void sendOrderConfirmation() {
    print("Sending confirmation for order $orderId");
  }
}

