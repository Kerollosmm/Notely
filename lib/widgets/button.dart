import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  
  const Button({super.key, required this.text, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0xFF007BFF),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(text , style: TextStyle(
          fontSize: 20, 
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),),
      ),
    );
  }
}
