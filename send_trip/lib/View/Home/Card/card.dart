import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  final String title;
  final String image;
  final String description;

  const CardPage({Key key, this.title, this.image, this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            end: Alignment.bottomLeft,
            begin: Alignment.bottomRight,
            colors: [Color(0xff353740), Color(0xff222222)]),
        borderRadius: BorderRadius.circular(6),
      ),
      height: 129,
      width: 350,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                description,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(width: 8),
          Image.asset(image)
        ],
      ),
    );
  }
}
