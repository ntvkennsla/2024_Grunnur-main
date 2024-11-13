class Product {
  final int id;
  final String name;
  final double price;

  Product(this.id, this.name, this.price);

  @override
  String toString() => 'Product(id: $id, name: $name, price: $price)';
}

void main(){
  List<Product> products = [
    Product(1, 'Laptop', 999.99),
    Product(2, 'Smartphone', 499.99),
    Product(3, 'Tablet', 299.99),
    Product(4, 'Smartwatch', 199.99),
    Product(5, 'Headphones', 99.99),
  ];

  //FIND PRODUCT BY NAME
  String searchName = "Smartwatch";
  Product? foundProduct;
  try {
    foundProduct = products.firstWhere((product) => product.name == searchName);
  } catch (e) {
    foundProduct = null;
  }

  if(foundProduct != null){
    print(foundProduct)    ;
  } else{
    print('Product not found');
  }

  // FIND ALL PRODUCTS CHEAPER THAN $300
  // Iterable and use where
  print(products);
  print("Product 1 name: ${products[1].price}");
  // Use a for loop to print all affordableProducts
}