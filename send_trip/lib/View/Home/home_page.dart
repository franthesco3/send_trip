import 'package:flutter/material.dart';
import 'package:send_trip/View/Home/BottomNavigationBar/bottomNavigationBar.dart';
import 'package:send_trip/View/Home/Card/card.dart';
import 'package:send_trip/View/Viajante/viajante.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 100),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Image.asset('assets/images/logo.png')),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Icon(
                    Icons.account_box,
                    size: 40,
                  ),
                )
              ],
            ),
            SizedBox(height: 45),
            RichText(
              text: TextSpan(
                text: 'Facilitando seus ',
                style: TextStyle(color: Colors.black, fontSize: 20),
                children: const <TextSpan>[
                  TextSpan(
                      text: 'envios',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Entregue ou envie.',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            SizedBox(height: 40),
            CardPage(
                title: 'Remetente',
                description: 'Para onde quer enviar seu objeto?',
                image: 'assets/images/ic-box.png'),
            SizedBox(height: 24),
            InkWell(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Viajante())),
              child: CardPage(
                  title: 'Viajante',
                  description: 'Vai viajar para onde ?',
                  image: 'assets/images/delivery-truck.png'),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}
