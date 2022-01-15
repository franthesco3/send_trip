import 'package:flutter/material.dart';
import 'package:send_trip/View/Pacote/Pacote.dart';
import 'package:send_trip/View/Widgets/AppBar/appBarWidget.dart';
import 'package:send_trip/models/veiculo.dart';
import 'package:intl/intl.dart';

class TrajetoPage extends StatefulWidget {
  final Veiculo veiculo;

  const TrajetoPage({Key key, this.veiculo}) : super(key: key);

  @override
  _TrajetoPageState createState() => _TrajetoPageState();
}

class _TrajetoPageState extends State<TrajetoPage> {
  DateTime _date;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppBarWidget(
          title: 'Viajante',
          subtitle: 'Qual o trajeto da sua viagem?',
        ),
        preferredSize: Size.fromHeight(130),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Selecione data e rota da sua viagem',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2022),
                            lastDate: DateTime(2025))
                        .then((value) {
                      setState(() {
                        _date = value;
                        print(_date);
                      });
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(6)),
                    height: 54,
                    width: 156,
                    child: Center(
                      child: Text(
                          _date == null
                              ? 'Data de partida'
                              : new DateFormat('yMd').format(_date),
                          style: TextStyle(color: Colors.grey, fontSize: 16)),
                    ),
                  ),
                ),
                SizedBox(width: 24),
                InkWell(
                  onTap: () {
                    showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2022),
                            lastDate: DateTime(2025))
                        .then((value) {
                      setState(() {
                        _date = value;
                        print(_date);
                      });
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(6)),
                    height: 54,
                    width: 156,
                    child: Center(
                      child: Text(
                          _date == null
                              ? 'Data de chegada'
                              : new DateFormat('yMd').format(_date),
                          style: TextStyle(color: Colors.grey, fontSize: 16)),
                    ),
                  ),
                ),
              ],
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Cidade de partida',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/images/pointer-spot-tool-for-maps.png'),
                Text('Nova Alvorada'),
                Image.asset('assets/images/ic_close.png')
              ],
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Cidade de destino ',
              ),
            ),
            Center(
              child: InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PacotePage())),
                child: Container(
                  height: 48,
                  width: 328,
                  decoration: BoxDecoration(
                      color: Color(0xff16A45C),
                      borderRadius: BorderRadius.circular(6)),
                  child: Center(
                      child: Text(
                    'Avançar',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16),
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
