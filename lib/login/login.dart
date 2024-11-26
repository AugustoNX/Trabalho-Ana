import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import '../home.dart';
import "register.dart";

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final emailControler = TextEditingController();
    final senhaControler = TextEditingController();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login",
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
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0,0,20,0),
              child: RichText(
                text: TextSpan(
                  text: '',
                  style: TextStyle(color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Falar com suporte',
                      style: TextStyle(color: Color.fromARGB(255, 250, 234, 86)),
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
        body: Center(
          child: Container(
            width: 500,
            height: 500,
             decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20.0), 
            ),
            padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Faça Login",
                    style: TextStyle(color: Colors.white, fontSize: 40)),
                const SizedBox(height: 10),
                TextField(
                  controller: emailControler,
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: const TextStyle(color: Colors.black),
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                TextField(
                  controller: senhaControler,
                  decoration: InputDecoration(
                    labelText: "Senha",
                    labelStyle: const TextStyle(color: Colors.black),
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                RichText(
                text: TextSpan(
                  text: 'Não possui uma conta? ',
                  style: TextStyle(color: Color.fromARGB(255, 250, 237, 120)),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Cadastre-se' ,
                      style: TextStyle(
                              color: Color.fromARGB(255, 250, 234, 86),
                              decoration: TextDecoration.underline
                            ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Register()),
                          );
                        },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 250, 234, 86),
                  ),
                  onPressed: () {},
                  child: const Text("Login",
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
