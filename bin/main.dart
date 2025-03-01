class DiscountCalculator {
  double calculateDiscount(String userType, double amount) {
    if (userType == "regular") {
      return amount * 0.1; // 10% скидка для обычных пользователей
    } else if (userType == "premium") {
      return amount * 0.2; // 20% скидка для премиум пользователей
    }
    throw ArgumentError("Unknown user type");
  }
}

void main() {
  final calculator = DiscountCalculator();
  final regularDiscount = calculator.calculateDiscount("regular", 100);
  final premiumDiscount = calculator.calculateDiscount("premium", 100);

  print("Regular Discount: $regularDiscount"); // Output: Regular Discount: 10.0
  print("Premium Discount: $premiumDiscount"); // Output: Premium Discount: 20.0
}


