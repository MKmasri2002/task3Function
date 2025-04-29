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
  for (int i = 0; i < items.length; i++) {
    printItemsWithNewPrice(
      id: items[i]["id"],
      name: items[i]["name"],
      price: items[i]["price"],
    );
  }
}

void printItemsWithNewPrice({
  required int id,
  String? name,
  required double price,
}) {
  double priceAfterDiscount;

  priceAfterDiscount = price - (price * 0.02);
  if (name != null)
    print("ID : $id  Name : $name  Price After Discount : $priceAfterDiscount");
  else
    print(
      "ID : $id  Name : Unkown  Price After Discount : $priceAfterDiscount",
    );
}
