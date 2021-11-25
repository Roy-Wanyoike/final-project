import 'package:flutter/material.dart';

class EmptyBtn extends StatelessWidget {
  final double size;
  final Color backgroundColor;
  final Color boderColor;
  final TextButton button;

  EmptyBtn({
    required this.button,
    this.size = double.infinity,
    this.backgroundColor = Colors.transparent,
    this.boderColor = Colors.white,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: size,
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: this.backgroundColor,
        ),
        child: this.button);
  }
}

class OutlinedEmptyBtn extends StatelessWidget {
  double size;
  final Color backgroundColor;
  final Color boderColor;
  final TextButton button;

  OutlinedEmptyBtn({
    required this.button,
    this.size = double.infinity,
    this.backgroundColor = Colors.transparent,
    this.boderColor = Colors.white,
  }) {
    //this.button.style?.backgroundColor = MaterialStateProperty.all<Color>(this.backgroundColor);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40.0,
        width: size,
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: this.backgroundColor,
            border: Border.all(
              color: this.boderColor,
              width: 2.0,
            )),
        child: this.button);
  }
}
