class DiscountCalculator {
  double calculateDiscount(User user, double amount) {
    return user.calculateDiscount(amount);
  }
}

void main() {
  final regularUser = RegularUser();
  final premiunUser = PremiumUser();

  final calculator = DiscountCalculator();
  final regularDiscount = calculator.calculateDiscount(regularUser, 1000);
  final premiumDiscount = calculator.calculateDiscount(premiunUser, 1000);

  print("Regular Discount: $regularDiscount");
  print("Premium Discount: $premiumDiscount");
}

abstract class User {
  const User(); 

  double calculateDiscount(double amount);

}

class RegularUser extends User {
  
    const RegularUser();
    
      @override
      double calculateDiscount(double amount) {
        return amount * 0.1;
      }

}

class PremiumUser extends User {
  
  @override
  double calculateDiscount(double amount) {
    return amount * 0.2;
  }

}