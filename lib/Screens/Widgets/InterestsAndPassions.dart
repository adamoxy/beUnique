import 'package:beunique_day1/Models/ProfileModel.dart';
import 'package:beunique_day1/Utiles/Constants.dart';
import 'package:flutter/material.dart';

import 'BioCirular.dart';

class InterestsAndPassions extends StatefulWidget {
  final double width;
  final double height;
  final List<Interest> interests;
  final String title;
  InterestsAndPassions({this.width, this.height, this.interests, this.title});
  @override
  _InterestsAndPassionsState createState() => _InterestsAndPassionsState();
}

class _InterestsAndPassionsState extends State<InterestsAndPassions> {
  @override
  Widget build(BuildContext context) {
    return widget.interests != null && widget.interests.isNotEmpty
        ? Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              defaultPadding(
                left: 20,
                child: Text(
                  "${widget.interests.length} Passions ",
                  style: textStyle(size: 15, isBold: true),
                ),
              ),
              Container(
                  height: widget.width + 30,
                  width: widget.width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      BioCircular(),
                    ],
                  )),
            ],
          )
        : Container();
  }
}
