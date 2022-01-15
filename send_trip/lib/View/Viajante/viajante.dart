import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:send_trip/View/Viajante/Trajeto/trajeto_page.dart';
import 'package:send_trip/View/Widgets/AppBar/appBarWidget.dart';
import 'package:send_trip/models/veiculo.dart';

class Viajante extends StatefulWidget {
  @override
  _ViajanteState createState() => _ViajanteState();
}

class _ViajanteState extends State<Viajante> {
  List<dynamic> veiculo;
  List<Veiculo> veiculos;
  bool ischecked = false;
  int select = 0;
  Veiculo vei;

  @override
  Future<void> initState() {
    super.initState();
    getDados();
    veiculos = Veiculo.getVeiculo();
  }

  Future getDados() async {
    await rootBundle.loadString('assets/images/dados.json').then((datajson) {
      this.setState(() {
        veiculo = jsonDecode(datajson);
      });
    });
  }

  Widget buildRadioLIstTile(int index) {
    Widget widget;
    widget = RadioListTile<Veiculo>(
        activeColor: Color(0xff16A45C),
        title: Text(
          veiculos[index].nome,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        controlAffinity: ListTileControlAffinity.trailing,
        secondary: Image.asset(veiculos[index].image),
        value: veiculos[index],
        groupValue: vei,
        onChanged: (Veiculo v) {
          setState(() {
            vei = v;
          });
        });
    return widget;
  }

  chengeStateCheckBox(int index, bool value) {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: AppBarWidget(
            title: 'Viajante',
            subtitle: 'Qual será o meio de transporte da sua viagem?',
          ),
          preferredSize: Size.fromHeight(130)),
      body: Column(
        children: [
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text('Transporte',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ),
              Text('')
            ],
          ),
          SizedBox(height: 12),
          Container(
            width: 400,
            height: 550,
            child: ListView.separated(
                separatorBuilder: (_, context) => Divider(),
                itemCount: 9,
                itemBuilder: (context, index) {
                  return buildRadioLIstTile(index);
                }),
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => TrajetoPage())),
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
          )
        ],
      ),
    );
  }
}
