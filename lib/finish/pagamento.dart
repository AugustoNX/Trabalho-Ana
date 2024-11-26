import 'package:flutter/material.dart';


class Pagamento extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Pagamento"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Endereço de Entrega
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("1- ENDEREÇO DE ENTREGA",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 8),
                      Text("Rua dos Testes 123\nJardim Guaraná\nMaringá, PR 18703-757"),
                      SizedBox(height: 8),
                      Text("Adicionar instruções de entrega",
                          style: TextStyle(color: Colors.blue)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              // Método de Pagamento
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("2- SELECIONE O MÉTODO DE PAGAMENTO",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 16),
                      Text("Seus cartões de crédito"),
                      ListTile(
                        leading: Radio(value: 1, groupValue: 1, onChanged: (value) {}),
                        title: Row(
                          children: [
                            Icon(Icons.credit_card, color: Colors.purple),
                            SizedBox(width: 8),
                            Text("Mastercard terminado em 5522"),
                          ],
                        ),
                        subtitle: Text("Parcelas disponíveis"),
                        trailing: Text("11/2030"),
                      ),
                      SizedBox(height: 8),
                      TextButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.add),
                        label: Text("Adicionar um cartão de crédito"),
                      ),
                      Divider(),
                      // Pix Option
                      ListTile(
                        leading: Radio(value: 2, groupValue: 1, onChanged: (value) {}),
                        title: Text("Pix"),
                        subtitle: Text("O código Pix gerado terá validade de 30 minutos"),
                      ),
                      // Boleto Option
                      ListTile(
                        leading: Radio(value: 3, groupValue: 1, onChanged: (value) {}),
                        title: Text("Boleto"),
                        subtitle: Text("Vencimento em 1 dia útil. A data de entrega será alterada devido ao tempo de processamento do Boleto."),
                      ),
                      // Cupons
                      Divider(),
                      Text("Cupons"),
                      Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Insira um cupom de desconto",
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          ElevatedButton(onPressed: () {}, child: Text("Aplicar")),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              // Resumo do Pedido
              Expanded(
                child: Align(
                  alignment: Alignment.topRight,
                  child: Card(
                    color: Colors.yellow[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("RESUMO DO PEDIDO",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Divider(),
                          Text("Itens:"),
                          Text("Frete e manuseio:"),
                          SizedBox(height: 8),
                          Text("TOTAL DO PEDIDO:", style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Usar este método de pagamento?"),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.yellow[700],
                              onPrimary: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
