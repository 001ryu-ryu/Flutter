import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final Color? color;
  final TextStyle? textStyle;
  final VoidCallback? callBack;


  RoundedButton({
    required this.btnName,
    this.icon,
    this.color = Colors.deepPurple,
    this.textStyle,
    this.callBack});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {
      callBack!();
    }, child: icon != null ? Row(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon!,
          SizedBox(
            width: 5
          ),
          Text(btnName, style: textStyle,)
        ],

    )
    : Text(btnName, style: textStyle,),
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      shadowColor: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15))
      )

    ),);

  }

}