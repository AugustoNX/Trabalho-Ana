import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart/Cart.dart';
import 'login/register.dart';
import "login/login.dart";
import "home.dart";
import 'admin.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Carrinho(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (_) => Initial(),
        "/tela2": (_) => Login(),
        "/tela3": (_) => Register(),
        "/tela4": (_) => Cart(),
        "/tela5": (_) => Admin(),
      },

    );
  }
}