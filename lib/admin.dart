import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import '../home.dart';

class Admin extends StatefulWidget {
  const Admin({super.key});

  @override
  State<Admin> createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: Icon(
              Icons.keyboard_backspace,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Center(
            child: Text(
              "Painel do Administrador",
              style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 250, 234, 86),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: RichText(
                text: TextSpan(
                  text: '',
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Falar com suporte',
                      style:
                          TextStyle(color: Color.fromARGB(255, 250, 234, 86)),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Initial()),
                          );
                        },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        body: Row(
          children: [
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Container(
                  height: 350,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 39, 39, 39),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Text("ID",
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Text("235",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Text("236",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Text("237",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Text("238",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                  )),
                            ),
                          ],
                        ),
                        SizedBox(width: 50),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Text("CIDADE",
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Text("Maringá, PR",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Text("São Paulo, SP",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Text("Goias, MG",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Text("Curitiba, PR",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                  )),
                            ),
                          ],
                        ),
                        SizedBox(width: 50),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Text("TOTAL",
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Text("R\$ 130,00",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Text("R\$ 150,00",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Text("R\$ 230,00",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Text("R\$ 300,00",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                  )),
                            ),
                          ],
                        ),
                        SizedBox(width: 50),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Text("SITUAÇÂO",
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Text("Enviado",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.green,
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Text("Pendente",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.yellow,
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Text("Cancelado",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.red,
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Text("Enviado",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.green,
                                  )),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Relatorios: ", style: TextStyle(fontSize: 45)),
                    SizedBox(height: 25),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 250, 234, 86),
                        ),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text("Total Vendas",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.black)),
                        )),
                    SizedBox(height: 25),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 250, 234, 86),
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text("Venda por cliente",
                            style:
                                TextStyle(fontSize: 25, color: Colors.black)),
                      ),
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
