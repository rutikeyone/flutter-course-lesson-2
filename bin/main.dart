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
    print("Заказ с идентификатором ${order.orderId} был создан на сумму \$${order.amount}");
  }

  void saveOrderToDatabase(Order order) {
    print("Сохранение данных о заказе с идентификатором ${order.orderId} в базу данных");
  }
}

class NotificationService {
  void sendOrderConfirmation(Order order) {
    print("Отправка информации о заказе с идентификатором ${order.orderId}");
  }
}

class Logger {
  void logOrderCreation(Order order) {
    print("Создание события о создании заказа с идентификатором ${order.orderId}");
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