import 'package:flutter/material.dart';


class OutlinedBtn extends StatelessWidget {
  final double size;
  final Color textColor;
  final Color backgroundColor;
  final Function? callback;
  final Color boderColor;
  final Widget? Page;
  final label;
  final double height;

  OutlinedBtn({
    @required this.label,
    this.callback,
    this.Page,
    this.height = 40.0,
    this.size = double.infinity,
    this.backgroundColor = Colors.transparent,
    this.textColor = Colors.white,
    this.boderColor = Colors.white,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: size,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: this.backgroundColor,
        border: Border.all(
          color: this.boderColor,
          width: 2.0,
        ),
      ),
      child: TextButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(this.backgroundColor),
        ),
        child: Text(
          label,
          style: TextStyle(fontSize: 14, color: textColor),
        ),
        onPressed: this.callback != null
            ? this.callback!()
            : () {
                if (this.Page != null) {
                  Get.to(this.Page);
                }
              },
      ),
    );
  }
}
