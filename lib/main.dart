import 'package:batman/batman_button.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MainBatmanSingUpApp());
}

class MainBatmanSingUpApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: BatmanSingUp(),
    );
  }
}

class BatmanSingUp extends StatelessWidget {
  const BatmanSingUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF100F0B),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset('../assets/batman_background.png',fit: BoxFit.contain),            
          ),
          
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset('../assets/batman_alone.png',fit: BoxFit.contain),            
          ),

          Positioned(
            top: MediaQuery.of(context).size.height/2.5,
            left: 0,
            right: 0,
            child: Image.asset('../assets/batman_logo.png',
            height: 60 ,
            width: 100,
            fit: BoxFit.contain),            
          ),

         Positioned(
          top: MediaQuery.of(context).size.height / 2,
          left: 0,
          right: 0,
          child: Column(
            children: [
              Text(
                'WELCOME TO',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
              Text(
                'GOTHAM CITY',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                ),
              ),
              SizedBox(height: 20), // Agrega un espacio entre el texto y el botón
              BatmanButton(
                text: 'LOGIN',
                onTap: () {},
              ),
            ],
          ),
        )

        ],
      ),
    );
  }
}