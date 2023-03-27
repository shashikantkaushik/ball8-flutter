import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
      home:Scaffold(
          backgroundColor:Colors.blue,
       appBar:AppBar(backgroundColor:Colors.blue[900],
              title:Text('Ask Me Anything')


          ),
          body:ballPage(),
      )
      )

);
class ballPage extends StatefulWidget {

  @override
  State<ballPage> createState() => _ballPageState();
}

class _ballPageState extends State<ballPage> {
  int ballnumber=1;
  @override
  Widget build(BuildContext context) {
    return Center(child:
        FlatButton(
            onPressed:(){
              setState(() {
                ballnumber = Random().nextInt(5)+1;
              });

    },
    child:
        Image.asset('images/ball$ballnumber.png')
    )
    );

  }
}



