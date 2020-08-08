import 'package:flutter/material.dart';
import 'data.dart';

class SecondPage extends StatelessWidget {
  final int data;
  SecondPage({Key key, @required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String cardTitle;
    String cardSubtitle;
    String cardText;
    String cardImage;

    switch (data) {
      case 0:
        cardTitle = title[2];
        cardSubtitle = titleCard[2];
        cardText = textCard[2];
        cardImage = images[2];
        break;

      case 1:
        cardTitle = title[1];
        cardSubtitle = titleCard[1];
        cardText = textCard[1];
        cardImage = images[1];
        break;

      default:
        cardTitle = title[0];
        cardSubtitle = titleCard[0];
        cardText = textCard[0];
        cardImage = images[0];
    }
    print(data);
    return Scaffold(
        backgroundColor: Colors.cyan[100],
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                    left: 12.0, right: 12.0, top: 30.0, bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        IconData(58834, fontFamily: 'MaterialIcons'),
                        color: Colors.grey[900],
                        size: 30.0,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(
                        IconData(58820,
                            fontFamily: 'MaterialIcons',
                            matchTextDirection: true),
                        color: Colors.grey[900],
                        size: 30.0,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
              Column(children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        cardTitle,
                        style: TextStyle(
                            color: Colors.grey[900],
                            fontFamily: "Calibre-Semibold",
                            fontSize: 46.0,
                            letterSpacing: 1.0),
                      ),
                    ],
                  ),
                ),
              ]),
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Row(children: <Widget>[
                  Text(
                    cardSubtitle,
                    style: TextStyle(
                        color: Colors.grey[900],
                        fontFamily: "Calibre-Semibold",
                        fontSize: 26.0,
                        letterSpacing: 1.0),
                  ),
                ]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(top: 30.0, bottom: 30.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child:
                            Image.asset(cardImage, width: 312.0, height: 312.0),
                      ))
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.0, right: 30.0),
                child: Row(children: <Widget>[
                  Flexible(
                    child: Text(
                      cardText,
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ));
  }
}
