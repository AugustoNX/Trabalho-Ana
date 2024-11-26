import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import '../home.dart';

class AppBarEcommerce extends StatefulWidget {
  const AppBarEcommerce({super.key});

  @override
  State<AppBarEcommerce> createState() => _AppBarEcommerceState();
}

class _AppBarEcommerceState extends State<AppBarEcommerce> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      ),
    );
  }
}