import 'package:flutter/material.dart';
import 'package:send_trip/View/Entrega%20/entrega.dart';
import 'package:send_trip/View/Widgets/AppBar/appBarWidget.dart';

class PrecoPage extends StatefulWidget {
  @override
  _PrecoPageState createState() => _PrecoPageState();
}

class _PrecoPageState extends State<PrecoPage> {
  double valor = 100.0;
  TextEditingController preco;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: AppBarWidget(
            title: 'Ser um Muvver',
            subtitle: 'Definir preço mínimo do deslocamento?',
          ),
          preferredSize: Size.fromHeight(130)),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
            'Tamanho',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Text('Valor sugerido'),
        Slider(
          activeColor: Colors.black,
          value: valor,
          onChanged: (value) {
            setState(() {
              valor = value;
            });
          },
          max: 200,
          min: 10,
          label: valor.toString(),
        ),
        Container(
          width: 65,
          height: 45,
          child: Center(
            child: TextField(
              controller: preco,
              onChanged: (v) {
                setState(() {
                  valor = double.parse(preco.value.text);
                });
              },
              decoration: InputDecoration(
                hintText: 'R\$ $valor',
              ),
              keyboardType: TextInputType.number,
            ),
          ),
        ),
        Text('Clique no valor acima, para sugerir um valor mais específico'),
        Center(
          child: InkWell(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => EntregaPage())),
            child: Container(
              width: 320,
              height: 48,
              decoration: BoxDecoration(
                  color: Color(0xff16A45C),
                  borderRadius: BorderRadius.circular(6)),
              child: Center(
                child: Text(
                  'Avançar',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
