void main() {
  final order = Order("12345", 250.0);
  final orderRepository = OrderRepository();
  final notificationService = NotificationService();
  final logger = Logger();
  final orderManager = OrderManager(orderRepository, notificationService, logger);

  orderManager.processOrder(order);
}


class Order {
  final String orderId;
  final double amount;

  const Order(this.orderId, this.amount);
}

class OrderRepository {
  void createOrder(Order order) {
    print("Order ${order.orderId} created with amount \$${order.amount}");
  }

  void saveOrderToDatabase(Order order) {
    print("Saving order ${order.orderId} to database");
  }
}

class NotificationService {
  void sendOrderConfirmation(Order order) {
    print("Sending confirmation for order ${order.orderId}");
  }
}

class Logger {
  void logOrderCreation(Order order) {
    print("Logging order ${order.orderId} creation");
  }
}

class OrderManager {
  final OrderRepository _orderRepository;
  final NotificationService _notificationService;
  final Logger _logger;

  OrderManager(this._orderRepository, this._notificationService, this._logger);

  void processOrder(Order order) {
    _orderRepository.createOrder(order);
    _orderRepository.saveOrderToDatabase(order);
    _notificationService.sendOrderConfirmation(order);
    _logger.logOrderCreation(order);
  }
}