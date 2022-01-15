import 'package:flutter/material.dart';
import 'package:send_trip/View/Peso/peso.dart';
import 'package:send_trip/View/Widgets/AppBar/appBarWidget.dart';
import 'package:send_trip/models/pacote.dart';

class PacotePage extends StatefulWidget {
  @override
  _PacotePageState createState() => _PacotePageState();
}

class _PacotePageState extends State<PacotePage> {
  List<Pacote> pacotes;
  Pacote p;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pacotes = Pacote.getPacote();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: AppBarWidget(
            title: 'Ser um Muvver',
            subtitle:
                'O volume que você deseja deslocar tem tamanho similar a que?',
          ),
          preferredSize: Size.fromHeight(130)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text('Tamanho',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          Container(
            width: 400,
            height: 550,
            child: ListView.separated(
                separatorBuilder: (_, context) => Divider(),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return buildRadioLIstTile(index);
                }),
          ),
          Center(
            child: InkWell(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PesoPage())),
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
        ],
      ),
    );
  }

  Widget buildRadioLIstTile(int index) {
    Widget widget;
    widget = RadioListTile<Pacote>(
        activeColor: Color(0xff16A45C),
        title: Text(
          pacotes[index].nome,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        controlAffinity: ListTileControlAffinity.trailing,
        secondary: Image.asset(pacotes[index].image),
        value: pacotes[index],
        groupValue: p,
        onChanged: (pacote) {
          setState(() {
            p = pacote;
          });
        });
    return widget;
  }
}
