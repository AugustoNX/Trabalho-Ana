import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Get extends StatelessWidget {
    final String nome;
    final String senha;
    final String cpf;
    final String email;
    final String telefone;

    Get({required this.nome, required this.senha, required this.email, required this.telefone, required this.cpf, });

Widget build(BuildContext context) {
  return Scaffold();
}
}

void addUsuario(String nome, String email, String telefone, String cpf, String senha) async {
  final baseUrl = "http://192.168.237.71";
   final response = await http.post(
    Uri.parse("$baseUrl/client/store/"),
    body: jsonEncode({
      "nome": nome,
      "senha": senha,
      "email": email,
      "phone": telefone,
      "CPF": cpf,
    }),
  );
   if (response.statusCode == 200) {
    print("Usuário adicionado com sucesso!");
  } else {
    print("Erro ao adicionar usuário: ${response.statusCode}");
  }
}