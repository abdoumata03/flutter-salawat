import 'dart:async';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                SecondScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/yosh 1.png"),
                const SizedBox(
                  height: 40,
                ),
                const Text('Roh Tsali'),
              ],
            )
        ),
      ),
    );
  }
}
class SecondScreen extends StatefulWidget {
  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    var isPress = true;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Text(
                "Prayers :)",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onLongPress: (){
                  bool isPress = false;
                },
                child: isPress ? const SalatWidget(text: "Soubh",): Container(color: Colors.red,),
              ),
              SizedBox(height: 20,),
              SalatWidget(text: "Soubh",),
              SizedBox(height: 20,),
              SalatWidget(text: "Soubh",),
              SizedBox(height: 20,),
              SalatWidget(text: "Soubh",),

            ],
          ),
        ),
      ),
    );
  }
}


class SalatWidget extends StatefulWidget {

  final String text;

  const SalatWidget({super.key, required this.text});

  @override
  State<SalatWidget> createState() => _SalatWidgetState();
}

class _SalatWidgetState extends State<SalatWidget> {
  @override
  Widget build(BuildContext context) {

    bool isPress = true;

    return GestureDetector(
      onTap: (){
        setState(() {
          isPress = false;
        });
      },
      child: isPress ? Container(
            color: Colors.grey.shade300,
            height: 300,
            width: 400,
            child: Column(
              children: [
                SizedBox(height: 20,),
                Text(widget.text, style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400
                ),),
                SizedBox(height: 20,),
                Image.asset("assets/images/yosh 1.png"),
              ],
            )
      ) : SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              color: Colors.red,
            ),
            SizedBox(width: 10,),
            Container(
              color: Colors.red,
            ),
            SizedBox(width: 10,),
            Container(
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}


