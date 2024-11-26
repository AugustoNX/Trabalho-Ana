class Product{
  final String id;
  final String title; 
  final double price;
  final String imageUrl;  

  Product({required this.id, required this.title, required this.price, required this.imageUrl});
}

final products = [
Product(
  id: "1",
  title: "Vestido Branco Feminino",
  price: 135.00,
  imageUrl: "assets/vestido.jpeg",
),

Product(
  id: "2",
  title: "Calça bege Feminino",
  price: 140.00,
  imageUrl: "assets/calca.jpeg",
),

Product(
  id: "3",
  title: "Blazer Feminino",
  price: 140.00,
  imageUrl: "assets/blazerF.jpeg",
),

Product(
  id: "4",
  title: "Calça branca Feminino",
  price: 140.00,
  imageUrl: "assets/calcaBranca.jpeg",
),

Product(
  id: "5",
  title: "camisa branca Feminino",
  price: 140.00,
  imageUrl: "assets/camisaF.jpeg",
),

// masculino

Product(
  id: "6",
  title: "Camisa Masculina",
  price: 140.00,
  imageUrl: "assets/camisaBraM.jpeg",
),

Product(
  id: "7",
  title: "Calça Masculina",
  price: 140.00,
  imageUrl: "assets/calcaM.jpeg",
),

Product(
  id: "8",
  title: "Camisa Masculina",
  price: 140.00,
  imageUrl: "assets/camisaBraM.jpeg",
),

Product(
  id: "9",
  title: "Blazer Masculino",
  price: 140.00,
  imageUrl: "assets/sobretudoM.jpeg",
),

Product(
  id: "10",
  title: "sueter Masculino ",
  price: 140.00,
  imageUrl: "assets/sueterM.jpeg",
),

];