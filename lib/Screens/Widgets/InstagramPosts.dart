import 'package:beunique_day1/Models/ProfileModel.dart';
import 'package:beunique_day1/Utiles/Constants.dart';
import 'package:flutter/material.dart';

import 'BasicInfoRow.dart';
import 'RowDevider.dart';

class InstagramPosts extends StatefulWidget {
  final double width;
  final double height;
  final List<Photo> photos;
  final String title;
  InstagramPosts({this.width, this.height, this.photos, this.title});
  @override
  _BasicInfoState createState() => _BasicInfoState();
}

class _BasicInfoState extends State<InstagramPosts> {
  @override
  Widget build(BuildContext context) {
    return widget.photos != null && widget.photos.isNotEmpty
        ? Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              defaultPadding(
                left: 20,
                child: Text(
                  "${widget.photos.length} Instagram Posts ",
                  style: textStyle(size: 15, isBold: true),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: widget.width / 1.5,
                    margin: EdgeInsets.only(left: 15, right: 15),
                    color: Colors.transparent,
                    child: GridView.builder(
                        scrollDirection: Axis.horizontal,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 7.0,
                          crossAxisSpacing: 7.0,
                        ),
                        itemCount: widget.photos.length,
                        itemBuilder: (BuildContext ctx, index) {
                          return new Container(
                            decoration: new BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      widget.photos[index].filename),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              gradient: new LinearGradient(
                                begin: Alignment.centerRight,
                                end: Alignment.centerLeft,
                                colors: [
                                  Color(0xFF495896),
                                  Color(0xFF4B6FFF),
                                  // Color(0xFF495896),
                                ],
                              ),
                            ),
                          );
                        }),
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
