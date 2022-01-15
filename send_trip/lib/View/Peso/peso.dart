import 'package:flutter/material.dart';
import 'package:send_trip/View/Preco/preco.dart';
import 'package:send_trip/View/Widgets/AppBar/appBarWidget.dart';
import 'package:send_trip/models/pacote.dart';

class PesoPage extends StatefulWidget {
  @override
  _PesoPageState createState() => _PesoPageState();
}

class _PesoPageState extends State<PesoPage> {
  List<Pacote> pacotes;
  Pacote p;

  @override
  void initState() {
    super.initState();
    pacotes = Pacote.getPacote();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: AppBarWidget(
            title: 'Ser um Muvver',
            subtitle: 'Qual o peso do volume?',
          ),
          preferredSize: Size.fromHeight(130)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              'Peso',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
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
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PrecoPage())),
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
