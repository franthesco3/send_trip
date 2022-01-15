import 'package:flutter/material.dart';
import 'package:send_trip/View/Home/home_page.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  final String subtitle;

  const AppBarWidget({Key key, this.title, this.subtitle}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: InkWell(
            onTap: () => Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => HomePage()),
                (Route<dynamic> route) => false),
            child: Icon(Icons.close)),
        title: Text(title),
        bottom: PreferredSize(
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Text(
                subtitle,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            preferredSize: Size.fromHeight(20)));
  }
}
