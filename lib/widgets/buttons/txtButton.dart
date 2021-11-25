import 'package:flutter/material.dart';


class TxtButton extends StatelessWidget {
  final Color textColor;
  final Widget? Page;
  final Color backgroundColor;
  final Function? callback;
  final String label;
  final double size;
  final bool force;
  final double height;

  TxtButton(
      {required this.label,
      this.callback,
      this.Page,
      this.height = 40.0,
      this.size = double.infinity,
      this.backgroundColor = ColorsData.Primary,
      this.textColor = Colors.white,
      this.force = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: size,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: this.backgroundColor,
        //border: Border(bottom: BorderSide(color: Colors.grey[200]))
      ),
      child: TextButton(
          child: Text(
            label,
            style: TextStyle(fontSize: 14, color: textColor),
          ),
          onPressed: this.callback != null
              ? this.callback!()
              : () {
                  if (this.Page != null) {
                    if (this.force == true) {
                      Get.off(this.Page);
                    } else {
                      Get.to(this.Page);
                    }
                  }
                }),
    );
  }
}
