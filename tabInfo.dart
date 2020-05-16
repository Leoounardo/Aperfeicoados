import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:get_it/get_it.dart';

class CallService {
  void call(String number) => launch("tel:$number");
}

GetIt locator = GetIt();

void set(){
  locator.registerSingleton(CallService());
}



class TabInfo extends StatefulWidget {
  @override
  _TabInfoState createState() => _TabInfoState();
}

class _TabInfoState extends State<TabInfo> {
  CallService get _service => locator<CallService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 10.0, left: 10.0, top: 10.0, bottom: 10.0),
            margin: EdgeInsets.only(top: 0.0, right: 20.0, left: 25.0),
            color: Colors.transparent,
            child: Text('Funcionamento:',
                style: TextStyle(color: Colors.deepPurple,
                    fontSize: 40)
            )
        ),
        Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(0.0),
            color: Colors.transparent,
            child: Text('Restaurante: 10h as 14h ',
            style: TextStyle(color: Colors.deepPurple,
              fontSize: 20)
        )),
          Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.all(0.0),
              color: Colors.transparent,
              child: Text('Bar: 18h até meia noite   ',
                  style: TextStyle(color: Colors.deepPurple,
                      fontSize: 20)
              )),
          Container(
              padding: EdgeInsets.only(right: 10.0, left: 10.0, top: 10.0, bottom: 10.0),
              margin: EdgeInsets.only(top: 10.0, right: 20.0, left: 25.0),
              color: Colors.transparent,
              child: Text('Contato:             ',
              style: TextStyle(color: Colors.deepPurple,
              fontSize: 40)
          )),
          Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.all(0.0),
              color: Colors.transparent,
              child: RaisedButton(
                color: Colors.white,
                  child: Text('(67) 99257 4442             ',
                      style: TextStyle(color: Colors.deepPurple,
                          fontSize: 20
                      )
                  ),
                onPressed: () {
                  _service.call('(67) 99257 4442');
              },
              ),
          ),
          Container(
              padding: EdgeInsets.only(right: 10.0, left: 10.0, top: 10.0, bottom: 10.0),
              margin: EdgeInsets.only(top: 10.0, right: 20.0, left: 25.0),
              color: Colors.transparent,
              child: Text('Localização:     ',
                  style: TextStyle(color: Colors.deepPurple,
                      fontSize: 40)
              ))

        ],


      ),

      );

  }
}


