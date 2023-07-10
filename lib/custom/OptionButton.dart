import 'package:flutter/material.dart';
import 'package:travel_guide/utils/constant.dart';
import 'package:travel_guide/utils/widget_function.dart';
class OptionButton extends StatelessWidget {
  final String? text;
  final IconData? icon;
  final double? width;
  final double? height;
  const OptionButton({Key? key,this.text,this.icon,this.width,this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: COLOR_DARK_BLUE,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
          ),
          onPressed: (){},
          child: Row(
            children: [
              Icon(icon,color: COLOR_WHITE,),
              addHorizontalSpcace(10),
              Text(text!,style: TextStyle(color: COLOR_WHITE),)
            ],
          ),
      ),
    );
  }
}
