import 'dart:math';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import '/cart/CartItem.dart';
import '../Products/produto.dart';

class Carrinho with ChangeNotifier {
  Map<String, CartItem> _items = {};
  Map<String, CartItem> get items {
    return {...items};
  }

  int get itemsCount {
    return _items.length;
  }

  double get valorTotal {
    double total = 0.0;
    _items.forEach((key, cartItem) { 
      total += cartItem.preco * cartItem.quantidade;
    });
    return total;
  }


  void addItem(Product product) {
    if (_items.containsKey(product.id)) {
      _items.update(
        product.id,
        (itemExistente) => CartItem(
          idCarrinho: itemExistente.idCarrinho,
          name: itemExistente.name,
          img: itemExistente.img,
          preco: itemExistente.preco,
          tamanho: itemExistente.tamanho,
          quantidade: itemExistente.quantidade,
        ),
      );
    } else {
      _items.putIfAbsent(
        product.id,
        () => CartItem(
            idCarrinho: Random().nextDouble().toString(),
            name: product.title,
            img: product.imageUrl,
            preco: product.price,
            tamanho: "p",
            quantidade: 1,
        ),
      );
    }
    notifyListeners();
  }

  void removeitem(String productId) {
    _items.remove(productId);
    notifyListeners();
  }

  void clear() {
    _items = {};
    notifyListeners();
  }
}

class Cart extends StatelessWidget { 

  @override
  Widget build(BuildContext context) {

    int quant = 1;
    final carrinho = Provider.of<Carrinho>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Image.asset(
          "assets/logo.png",
          width: 400,
          height: 400,
          fit: BoxFit.cover,
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.people,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamed(context, "/tela2");
            },
          ),
          SizedBox(width: 16),
          IconButton(
            icon: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamed(context, "/tela5");
            },
          ),
          SizedBox(width: 16),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamed(context, "/tela4");
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: ListView.builder(
                itemCount: 2, 
                itemBuilder: (context, index) {
                  return Container(
                    height: 200,
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/vestido.jpeg',
                          width: 100,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Vestido Curto, Feminino, HERING",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Cor: PRETO",
                                style: TextStyle(color: Colors.white70),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "Tamanho:",
                                style: TextStyle(color: Colors.white70),
                              ),
                              Row(
                                children: ["P", "M", "G"].map((size) {
                                  return Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 12, vertical: 4),
                                      decoration: BoxDecoration(
                                        color: Colors.grey[400],
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text(size,
                                          style:
                                              TextStyle(color: Colors.black)),
                                    ),
                                  );
                                }).toList(),
                              ),
                              SizedBox(height: 10),
                              
                              Row(
                                children: [
                                  IconButton(
                                    onPressed:
                                        () {}, 
                                    icon: Icon(Icons.add_circle,
                                        color: Colors.red),
                                  ),
                                  Text("$quant",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18)),
                                  IconButton(
                                    onPressed:
                                        () {}, 
                                    icon: Icon(Icons.remove_circle,
                                        color: Colors.red),
                                  ),
                                  Spacer(),
                                  TextButton(
                                    onPressed:
                                        () {}, // Lógica para remover o item
                                    child: Text("remover",
                                        style:
                                            TextStyle(color: Colors.white70)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Resumo do pedido",
                      style: TextStyle(color: Colors.yellow[600], fontSize: 22),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("1 produto",
                            style: TextStyle(color: Colors.white)),
                        Text("R\$${carrinho.valorTotal}",
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Frete", style: TextStyle(color: Colors.white)),
                        Text("R\$ 10,00",
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    Divider(color: Colors.white54),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total",
                            style: TextStyle(
                                color: Colors.yellow[600], fontSize: 18)),
                        Text("R\$ 145,90",
                            style: TextStyle(
                                color: Colors.yellow[600], fontSize: 18)),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      "ou em até 4x de R\$ 36,50",
                      style: TextStyle(color: Colors.white70, fontSize: 12),
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {}, // Lógica para continuar
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        padding: EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Center(
                        child:
                            Text("CONTINUAR", style: TextStyle(fontSize: 16)),
                      ),
                    ),
                    TextButton(
                      onPressed: () {}, // Lógica para adicionar mais produtos
                      child: Text("Adicionar mais produtos",
                          style: TextStyle(color: Colors.white70)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
