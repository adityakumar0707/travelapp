import 'package:flutter/material.dart';
import 'package:travel_guide/utils/constant.dart';

class BorderBox extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  final double? width,height;

  const BorderBox({Key? key,this.padding,this.height,this.width,
    required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: COLOR_WHITE,
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(color: COLOR_GREY.withAlpha(100),width:2),
      ),
      padding: padding?? const EdgeInsets.all(8.0),
      child: Center(child: child),
    );
  }
}
