import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String hint;
  final TextInputType inputType;

  const InputField({Key? key, required this.hint, required this.inputType}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black54,
            ),
            child: TextField(
              keyboardType: inputType,
              decoration: 
              InputDecoration(hintText:hint,
              hintStyle: TextStyle(color: Colors.grey),
              border:InputBorder.none
              ),
            ),
          );
  }
}