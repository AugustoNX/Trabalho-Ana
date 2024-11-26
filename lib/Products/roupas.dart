import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../cart/Cart.dart';
import 'produto.dart';

class ListaRoupas extends StatefulWidget {
  const ListaRoupas({super.key});
  @override
  State<ListaRoupas> createState() => _ListaRoupasState();
}

class _ListaRoupasState extends State<ListaRoupas> {

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Carrinho>(context, listen: false);
    final List<Product> loadedProducts = products;

    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
              child: Text(
                "FEMININO",
                style: TextStyle(fontSize: 30),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 310,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5, 
                itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (){
                        cart.addItem(products[index]);
                        print(cart.itemsCount);
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                        child: Container(
                          width: 250,
                          height: 300,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.network(loadedProducts[index].imageUrl, fit: BoxFit.cover, width: 150,height: 200),
                                SizedBox(height: 5),
                                Text(
                                  loadedProducts[index].title,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                  ),
                                ),
                                Text(
                                  "R\$150",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                  ),
                                ),
                                SizedBox(height: 5),
                                ElevatedButton(
                                  onPressed: (){
                                    
                                  },
                                  child: Icon(Icons.shopping_cart)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                },
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
              child: Text(
                "MASCULINO",
                style: TextStyle(fontSize: 30),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 310,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,  
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                      child: Container(
                        width: 250,
                        height: 300,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Image.network(loadedProducts[index + 5].imageUrl, fit: BoxFit.cover, width: 150,height: 200),
                              SizedBox(height: 5),
                              Text(
                                loadedProducts[index + 5].title,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                              ),
                              Text(
                                "R\$100",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                              ),
                              SizedBox(height: 5),
                              ElevatedButton(onPressed: (){
                                
                              }, child: Icon(Icons.shopping_cart)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
