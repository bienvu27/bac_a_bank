
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/name_icon.dart';
import '../../styles/style.dart';
import '../image/svg_image_widget.dart';

class CheckboxCustomWidget extends StatelessWidget {
  final isChecked;
  final colorBorder;
  final colorIcon;
  final EdgeInsets? margin;
  final colorBG;
  final height;

  const CheckboxCustomWidget({Key? key, this.isChecked, this.colorBorder, this.colorIcon, this.margin, this.colorBG, this.height}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: margin ?? EdgeInsets.only(top: height_4,bottom:height_4,left: width_8,right: width_8),
        width: height??height_16,
        height: height??height_16,
        padding: EdgeInsets.all(height_2),
        decoration:  BoxDecoration(
          border: Border.all(width: 1,color:colorBorder??colorBackgroundInput),
          color: colorBG??(isChecked?Theme.of(context).primaryColor:Colors.white),
          shape: BoxShape.circle,
        ),
        child:  SVGImageWidget(
          url: svg_ic_checkbox,
          color: colorIcon??(isChecked?colorBackgroundInput:colorWhite),
        ));
  }
}
