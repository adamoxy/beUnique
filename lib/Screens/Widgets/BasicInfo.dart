import 'package:beunique_day1/Models/ProfileModel.dart';
import 'package:beunique_day1/Utiles/Constants.dart';
import 'package:flutter/material.dart';

import 'BasicInfoRow.dart';
import 'RowDevider.dart';

class MyBasicInfo extends StatefulWidget {
  final double width;
  final double height;
  final List<BasicInfo> basicInfoList;
  final String title;
  MyBasicInfo({this.width, this.height, this.basicInfoList, this.title});
  @override
  _BasicInfoState createState() => _BasicInfoState();
}

class _BasicInfoState extends State<MyBasicInfo> {
  @override
  Widget build(BuildContext context) {
    return widget.basicInfoList != null && widget.basicInfoList.isNotEmpty
        ? Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              defaultPadding(
                left: 20,
                child: Text(
                  "Personal Info",
                  style: textStyle(size: 15, isBold: true),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xFF495896),
                  border: Border.all(
                    color: Color(0xFF495896),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                        children: widget.basicInfoList.map((infoRow) {
                      var index = widget.basicInfoList.indexOf(infoRow);
                      return BasicInfoColumn(
                        width: widget.width,
                        keyString: infoRow.key.name,
                        valueString: infoRow.value,
                        isLast: index == widget.basicInfoList.length - 1,
                      );
                    }).toList()),
                  ),
                ),
              ),
            ],
          )
        : Container();
  }
}

class BasicInfoColumn extends StatelessWidget {
  final String keyString;
  final String valueString;
  final double width;
  final bool isLast;
  BasicInfoColumn(
      {this.keyString, this.valueString, this.width, this.isLast = true});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BasicInfoRow(
          height: 50,
          width: width,
          varKey: keyString,
          value: valueString,
        ),
        isLast ? Container() : RowDevider(),
      ],
    );
  }
}
