import 'package:flutter/material.dart';

class EntregaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 200),
        height: 500,
        width: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/send.png'),
            Text(
              'Viagem Criada',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            Text('Vamos ver os volumes ja disponíveis para a sua viagem'),
            Text(
              'Ao prosseguir, você declara para efeitos legais, administrativos, jurídicos e demais aplicáveis, a veracidade de todas as informações prestadas antes, durante e após qualquer uma das etapas do app.',
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
