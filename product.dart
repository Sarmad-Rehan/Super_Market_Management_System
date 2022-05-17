class Product {
  final int product_Id;
  String product_Name;
  int product_Quantity;
  double product_Price;
  bool isAvailable;

  Product(
      {required this.product_Name,
      required this.product_Id,
      required this.product_Price,
      required this.product_Quantity,
      required this.isAvailable});

  void updateProduct(
      String product_name, int product_Quantity, double product_Price) {
    this.product_Name = product_name;
    this.product_Price = product_Price;
    this.product_Quantity = product_Quantity;
  }

  void displayProduct() {
    print("The Product Id is: $product_Id");
    print("The Product Name is: $product_Name");
    print("The Product Price is: $product_Price");
    print("The Product Quatity is: $product_Quantity");
  }

  @override
  String toString() {
    return "\n\nId: $product_Id Name:$product_Name Quantity:$product_Quantity Price:$product_Price Availibility:${(isAvailable == true) ? "Yes" : "No"}\n";
  }
}
