import 'package:flutter/material.dart';

import '../constants.dart';

class SectionTitle extends StatelessWidget {
  final title;

  const SectionTitle({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Text(title, style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: textColor
            ),),
          ),
          InkWell(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Text('More', style: TextStyle(
                  color: backgroundColor
              ),),
            ),
          )
        ],
      ),
    );
  }
}
