import 'package:flutter/material.dart';


const _imageColor = Color(0xFFC8B853);

class BatmanButton extends StatelessWidget {
  const BatmanButton({
    Key? key, 
    required this.onTap,
    this.text = 'Login', 
    this.left = true,
  }) : super(key: key);

  final VoidCallback onTap;
  final String text;
  final bool left;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,

      child: Container(
        color: Color(0xFFFDE96A),
        padding: const EdgeInsets.all(15),
        child: Stack(
          children: [
            if(left)
            Image.asset('../assets/batman_logo.png',
            height: 50 ,
            width: 100,
            color: _imageColor,
            fit: BoxFit.contain),            
          

            Center(
              child: Text(text, style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),),
            ),

          ],
        ),
      ), 
    );
  }
}
