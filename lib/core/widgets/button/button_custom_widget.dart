import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../styles/style.dart';

// ignore: use_key_in_widget_constructors
class ButtonCustom extends StatelessWidget {
  final String? title;
  final Function? onPressed;
  final EdgeInsetsGeometry? margin;
  final double? width;
  final double? height;
  final Color? color;
  final Color? colorNotHaveOnPressed;
  final IconData? icon;
  final Color? colorText;

  const ButtonCustom(
      {Key? key, this.title, this.onPressed, this.margin, this.width, this.height, this.color, this.colorNotHaveOnPressed, this.icon, this.colorText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin??EdgeInsets.symmetric(vertical: height_18,horizontal: width_13),
      height: height??heightButton,
      width: width??MediaQuery.of(context).size.width ,
      child: ElevatedButton(
        // color: Theme.of(context).primaryColor,
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(border_5)))
            ),
            backgroundColor: MaterialStateProperty.all(color??Theme.of(context).primaryColor)),
        onPressed: onPressed!(),
        // disabledColor: colorNotHaveOnPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon==null?Container():Icon(icon,size: height_12, color: colorText??clr_010101),
            icon==null?Container():SizedBox(width: width_4,),
            Text(
              "${title?.tr()}",
              style: TextStyle(
                fontSize: fontSize_10,
                fontWeight: FontWeight.bold,
                color: colorText??clr_010101,
                fontFamily: 'Arial'
              ),
            ),
          ],
        ),
      ),
    );
  }
}
