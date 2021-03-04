import 'package:beunique_day1/Utiles/Constants.dart';
import 'package:flutter/material.dart';

import '../Bio.dart';
import '../Passion.dart';

class BioBtn extends StatelessWidget {
  final double width;
  final double height;
  final String btnName;
  final Color color;
  final bool fullOpacty;

  BioBtn(
      {this.width,
      this.height,
      this.btnName,
      this.fullOpacty = false,
      this.color: const Color(0xFFDEDEDE)});
// Ba
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(),
      margin: EdgeInsets.only(left: 30, right: 30, top: 7),
      child: InkWell(
        onTap: () {},
        child: Stack(
          children: [
            Opacity(
              opacity: fullOpacty ? 0.99 : 0.35,
              child: Container(
                width: width,
                height: width * .15,
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                  gradient: new LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    colors: [
                      color,
                      color,
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Opacity(
                  opacity: 0.65,
                  child: Text(
                    btnName,
                    style: textStyle(
                      size: 14,
                      isBold: true,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
