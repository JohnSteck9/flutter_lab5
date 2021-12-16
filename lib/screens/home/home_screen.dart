import 'dart:math';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  random(min, max){
    var rn = Random();
    return min + rn.nextInt(max - min);
  }

  int _couter1 = 0;
  int _couter2 = 0;


  _getInt(){
    setState(){
      _couter1 = random(5, 10);
      // _couter1 = random(5, 10);
}
  }
  // _getInt();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Column(children: [
              Container(
                color: Colors.blue,
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text('Left_1'),
                ),
              ),
              Container(
                color: Colors.blue,
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text('Left_1'),
                ),
              ),
              Container(
                color: Colors.blue,
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text('Left_1'),
                ),
              ),
            ]),
            const SizedBox(width: 200),
            Column(children: [
              Container(
                color: Colors.blue,
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text('Right_1'),
                ),
              ),
              Container(
                color: Colors.blue,
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text('Right_1'),
                ),
              ),
              Container(
                color: Colors.blue,
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text('Right_1'),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
