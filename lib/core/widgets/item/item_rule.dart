
import 'package:flutter/material.dart';

import '../../styles/style.dart';
import '../checkbox/checkbox_custom_widget.dart';

class ItemRuleWidget extends StatelessWidget {
  final Function? onClick;
  final bool? isChecked;
  final String? content;

  const ItemRuleWidget({Key? key, this.onClick, this.isChecked, this.content}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onClick!();
      },
      child: Padding(
        padding: EdgeInsets.only(left: width_13),
        child: Row(
          children: [
            CheckboxCustomWidget(
              isChecked: isChecked,
            ),
            Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    top:height_4 ,bottom: height_4,
                      right: width_13,
                    left: width_8
                      ),
                  child: Text(
                    content ?? "",
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: colorGrey, fontSize: fontSize_10),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
