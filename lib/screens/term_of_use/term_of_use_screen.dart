import 'dart:io';


import 'package:bac_a_bank/screens/term_of_use/term_of_use_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import 'package:provider/provider.dart';

import 'package:easy_localization/easy_localization.dart';

import '../../core/constants/name_icon.dart';
import '../../core/public/public_widget.dart';
import '../../core/styles/style.dart';
import '../../core/widgets/button/button_custom_widget.dart';
import '../../core/widgets/image/local_image_widget.dart';
import '../../core/widgets/image/svg_image_widget.dart';
import '../../core/widgets/item/item_rule.dart';

class TermOfUseScreen extends StatefulWidget {
  static const String routeName = '/tern_of_use';

  @override
  _TermOfUseScreenState createState() => _TermOfUseScreenState();
}

class _TermOfUseScreenState extends State<TermOfUseScreen> {
  TermOfUseNotifier? presenter;

  @override
  Widget build(BuildContext context) {
    presenter = Provider.of<TermOfUseNotifier>(context);
    return Scaffold(
      appBar: AppBar(
        // đường kẻ dưới chân header
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(height_4),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: height_4,
            decoration: BoxDecoration(gradient: clr_D3A61F_F0F566_CCA428),
          ),
        ),
        backgroundColor: colorWhite,
        leading: Container(),
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        // elevation: 0,
        title: Padding(
          padding: EdgeInsets.only(left: width_8),
          child: Image.asset(
            'assets/images/image/logo_bac_a.jpg',
            width: width_80,
          ),
        ),
        centerTitle: true,
        actions: [
          Stack(
            children: [
              SizedBox(
                width: width_64,
                child: LocalImageWidget(
                  url: png_flower_v2,
                  height: height_48,
                ),
              ),
              Center(
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.locale = Locale('vi');
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: width_16),
                        child: SVGImageWidget(
                          url: svg_ic_vietnam,
                          height: height_13,
                          width: height_13,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.locale = Locale('en');
                        },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: width_8),
                        child: SVGImageWidget(
                          url: svg_ic_english,
                          height: height_13,
                          width: height_13,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      body:
      Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: height_10,horizontal: width_13),
              decoration: BoxDecoration(
                color: colorBGCardWidget20,
                borderRadius: BorderRadius.all(Radius.circular(border_5),
                ),),
              child: Column(
                children: [
                  Html(
                      data:
                        "faq.conditons-of-use.conditons-header".tr(),

                      // style: {
                      //   // tables will have the below background color
                      //   "p": Style(
                      //       color: colorGrey,
                      //       textAlign: TextAlign.center,
                      //       padding: EdgeInsets.symmetric(vertical: height_8)
                      //   ),
                      // }
                    //defaultTextStyle: text_default_grey.copyWith(fontSize: fontSize_35)
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: height_8),
                      child: SingleChildScrollView(
                        child: Html(
                            data:
                              "faq.conditons-of-use.conditons".tr(),
                            // style: {
                            //   // tables will have the below background color
                            //   "p": Style(
                            //       color: colorGrey,
                            //       textAlign: TextAlign.justify,
                            //       padding: EdgeInsets.symmetric(vertical: height_2,horizontal: width_4)
                            //   ),
                            // }
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          ItemRuleWidget(
            onClick:(){
               presenter?.setIsAgreeRule();
            },
            content: "faq.checkBook".tr(),
            isChecked: presenter?.isAgreeRule,
          ),
          presenter!.haveError?Padding(
            padding: EdgeInsets.only(left: width_52),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  presenter!.haveError ? Public().languageCustom(
                    "card.ALERT_CONFIRM",
                  ) : "",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: fontSize_8,
                  ),
                ),
              ],
            ),
          ):Container(),
          Row(
            children: [
              Expanded(
                child: ButtonCustom(
                    title: 'media.skip',
                    onPressed: () {
                      exit(0);
                    }),
              ),
              Expanded(
                child: ButtonCustom(
                    title: 'common.ok',
                    onPressed: () {
                      presenter?.onClickAgree(context);
                    }),
              )
            ],
          ),
        ],
      ),

    );
  }
}
