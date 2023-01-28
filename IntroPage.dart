import 'package:flutter/material.dart';
import 'package:practice/NavBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IntroPage(),
    );
  }
}

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // the padding helps position the child elements in the container
        // the child elements in the container is the Elevated button

        alignment: Alignment.bottomCenter,
        padding: const EdgeInsets.all(64.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/running_human.webp'),
            fit: BoxFit.cover,
          ),
        ),
        child: ElevatedButton(
            child: Text("NEXT", style:TextStyle(fontSize: 28)),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black, minimumSize: Size(150, 50)),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => NavBar()),);
            // go to another page
          }

          // styling the button's size, background colour

        ),
      ),
    );
  }
}


