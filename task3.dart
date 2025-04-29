void main() {
  List<Map<String, dynamic>> items = [
    {"id": 1, "name": "Matrix", "price": 1.2},
    {"id": 2, "name": "Cola", "price": 0.5},
    {"id": 3, "name": "Code Red", "price": 0.6},
    {"id": 4, "name": "Red & Blue", "price": 0.9},
    {"id": 5, "name": "Fox", "price": 1.3},
    {"id": 6, "name": "Water", "price": 1.1},
    {"id": 7, "name": "Galaxy", "price": 1.6},
  ];

  printItemsWithNewPrice(items: items);
}

void printItemsWithNewPrice({required List<Map<String, dynamic>> items}) {
  double price;
  double priceAfterDiscount;
  for (int i = 0; i < items.length; i++) {
    price = items[i]["price"];
    priceAfterDiscount = price - (price * 0.02);
    print(
      "ID : ${items[i]["id"]}  Name : ${items[i]["name"]}  Price After Discount : $priceAfterDiscount",
    );
  }
}
