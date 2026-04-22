class BPricingCalculator {
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  static double calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return double.parse(shippingCost.toStringAsFixed(2));
  }

  static double calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return double.parse(taxAmount.toStringAsFixed(2));
  }

  static double getTaxRateForLocation(String location) {
    return 0.10;
  }

  static double getShippingCost(String location) {
    return 5.00;
  }
}
