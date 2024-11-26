import 'package:flutter/material.dart';
import 'Products/roupas.dart';


class Initial extends StatefulWidget {
  const Initial({super.key});

  @override
  State<Initial> createState() => _HomeState();
}

class _HomeState extends State<Initial> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Image.asset(
            "assets/logo.png",
            width: 400,
            height: 400,
            fit: BoxFit.cover,
          ),
          title: Padding(
            padding: const EdgeInsets.all(350),
            child: Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Pesquisar",
                    prefixIcon: Icon(Icons.search, color: Colors.black),
                    contentPadding: EdgeInsets.symmetric(vertical: 15),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
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
        body: Column(
          children: [
            Container(
                width: double.infinity,
                color: Color.fromARGB(255, 250, 234, 86),
                child: Column(
                  children: [
                    Text(
                      "Novidades",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Em breve",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    )
                  ],
                )),
            Container(
              color: Color.fromARGB(255, 230, 230, 230),
              child: Row(
                children: [
                  SizedBox(width: 25),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,10,0,10),
                    child: Text(
                      'FEMININO ',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,10,0,10),
                    child: Text(
                      'MASCULINO ',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,10,0,10),
                    child: Text(
                      'INFANTIL',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ListaRoupas(),
          ],
        ),
      ),
    );
  }
}
