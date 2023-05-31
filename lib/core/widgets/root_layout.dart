
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:provider/provider.dart';
import 'package:easy_localization/easy_localization.dart';

import '../constants/name_icon.dart';
import '../styles/style.dart';
import 'image/svg_image_widget.dart';


class RootLayout extends StatefulWidget {
  final Widget? child;

  const RootLayout({
    this.child,
  });

  @override
  _RootLayoutState createState() => _RootLayoutState();
}



class _RootLayoutState extends State<RootLayout> {



  @override
  void initState() {
    super.initState();
  }


@override
  void dispose() {
    super.dispose();
  }


  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
  //  ScreenUtil.init(context);
    //mặc định lúc đầu xét là false
    return SafeArea(
        child: Stack(children: [
          Container(
            color: Colors.black,
          ),
      // boong hoa stack duoi
           Positioned(
             bottom: 0,
             right: -100,
             child: SVGImageWidget(
               url: svg_flower_v1,
               height: height_212,
               width: width_365,
               color: Colors.grey.withOpacity(.5),
          ),
           ),
      widget.child ?? const SizedBox(),
    ]));
  }
}
