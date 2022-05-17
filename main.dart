import 'dart:io';
import 'product.dart';

void main(List<String> args) {
  menu();
}

void menu() {
  List<Product> products = [];
  int? choice;
  int count = 0;
  do {
    print(
        "===================== Super Market Management System =====================");
    print("[1] Add a Product");
    print("[2] Search a Product");
    print("[3] Update a Product Description");
    print("[4] Remove a Product");
    print("[5] Display All Products");
    print("[6] Exit");
    stdout.write("Enter Your Choice: ");
    choice = int.tryParse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        stdout.write("Enter Product Name: ");
        String p_Name = stdin.readLineSync()!;
        stdout.write("Enter Price: ");
        double p_Price = double.parse(stdin.readLineSync()!);
        stdout.write("Enter Quantity: ");
        int p_Quantity = int.parse(stdin.readLineSync()!);
        bool is_Avail;
        if (p_Quantity > 0) {
          is_Avail = true;
        } else {
          is_Avail = false;
        }
        products.add(Product(
            product_Id: count,
            product_Name: p_Name,
            product_Price: p_Price,
            product_Quantity: p_Quantity,
            isAvailable: is_Avail));
        print("Product Added Successfully with Product Id:$count");
        count++;
        break;
      case 2:
        stdout.write("Enter Product Name to Search: ");
        String p_Name = stdin.readLineSync()!;
        for (int i = 0; i < products.length; i++) {
          if ((products[i].product_Name) == p_Name) {
            print("Product Available");
          } else {
            print("Product Not Available");
          }
        }
        break;
      case 3:
        stdout.write("Enter Product Id You want to update: ");
        int p_Id = int.parse(stdin.readLineSync()!);
        stdout.write("Enter Product Name: ");
        String p_Name = stdin.readLineSync()!;
        stdout.write("Enter Price: ");
        double p_Price = double.parse(stdin.readLineSync()!);
        stdout.write("Enter Quantity: ");
        int p_Quantity = int.parse(stdin.readLineSync()!);
        for (int i = 0; i < products.length; i++) {
          if ((products[i].product_Id) == p_Id) {
            products[p_Id].updateProduct(p_Name, p_Quantity, p_Price);
            print("Product Description Update Successfully");
          } else {
            print("Product with given Id does not exists");
          }
        }
        break;
      case 4:
        stdout.write("Enter Product Id You want to update: ");
        int p_Id = int.parse(stdin.readLineSync()!);
        products.removeAt(p_Id);
        print("Product Removed Successfully");
        break;
      case 5:
        for (int i = 0; i < products.length; i++) {
          print(products[i]);
        }
        break;
      case 6:
        print("Thank You for using Library Management System");
        break;

      default:
        print("Invalid Choice");
        break;
    }
  } while (choice != 6);
}
