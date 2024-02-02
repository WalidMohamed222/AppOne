import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String label;
  final Color colorbutton;
  final Color colortext;
  final void Function()? onTap;
  final double fontsize;
  const Button({Key? key ,
    required this.label ,
    required this.colorbutton ,
    required this.colortext,
    required this.fontsize ,
    this.onTap,
  }) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 320,
        height: 40,
        decoration: BoxDecoration(
          color: colorbutton,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.black54,
              blurRadius: 5,
              offset: Offset(-3, 3),
            ),
          ],
        ),
        child: Center(
          child: Text(label,
            style: TextStyle(
              color: colortext,
              fontSize: fontsize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}