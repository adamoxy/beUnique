import 'package:beunique_day1/Models/CategoryModel.dart';
import 'package:beunique_day1/Utiles/Constants.dart';
import 'package:flutter/material.dart';

class BioCircular1 extends StatelessWidget {
  final String categoryName;
  final double radius;
  final bool oneColor;
  BioCircular1({this.radius = 50, this.categoryName, this.oneColor = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius,
      width: radius,
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        gradient: new LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: oneColor
              ? [
                  Color(0xFF495896),
                ]
              : [
                  Color(0xFF0226B2),
                  Color(0xFF4B6FFF),
                ],
        ),
      ),
      child: Center(
          child: Text(
        categoryName,
        style: textStyle(size: 14, isBold: true, color: Color(0xFF5a5a5a)),
      )),
    );
  }
}

class BioCircular extends StatefulWidget {
  final List<Interest> interests;
  BioCircular({this.interests});
  @override
  _BioCircularState createState() => _BioCircularState();
}

class _BioCircularState extends State<BioCircular> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 300,
      width: 370,
      child: new Stack(
        children: <Widget>[
          // bigCircle,
          new Positioned(
            child: new CircleButton(
                onTap: () => print("Cool"), iconData: Icons.favorite_border),
            top: 10.0,
            left: 130.0,
          ),
          new Positioned(
            child: new CircleButton(
                fillColor: true,
                onTap: () => print("Cool"),
                iconData: Icons.place),
            top: 35.0,
            right: 0.0,
          ),
          new Positioned(
            child: new CircleButton(
                onTap: () => print("Cool"), iconData: Icons.timer),
            top: 45.0,
            left: 10.0,
          ),
          new Positioned(
            child: new CircleButton(
                onTap: () => print("Cool"), iconData: Icons.place),
            top: 180.0,
            right: 10.0,
          ),

          new Positioned(
            child: new CircleButton(
                fillColor: true,
                onTap: () => print("Cool"),
                iconData: Icons.place),
            bottom: 75.0,
            left: 10.0,
          ),
          new Positioned(
            child: new CircleButton(
                fillColor: true,
                onTap: () => print("Cool"),
                iconData: Icons.local_pizza),
            top: 250.0,
            left: 130.0,
          ),
          new Positioned(
            child: new CircleButton(
                fillColor: true,
                onTap: () => print("Cool"),
                iconData: Icons.satellite),
            top: 130.0,
            left: 120.0,
          ),
        ],
      ),
    );
  }
}

class CircleButton extends StatelessWidget {
  final GestureTapCallback onTap;
  final IconData iconData;
  final bool fillColor;

  const CircleButton(
      {Key key, this.onTap, this.iconData, this.fillColor: false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = 115.0;

    return new InkResponse(
      onTap: onTap,
      child: fillColor
          ? Container(
              width: size,
              height: size,
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF495896),
              ),
              child: Center(
                child: Text(
                  "Interest 1",
                  style: textStyle(
                    size: 15,
                  ),
                ),
              ),
            )
          : new Container(
              width: size,
              height: size,
              decoration: new BoxDecoration(
                // color: Colors.white,
                shape: BoxShape.circle,
                gradient: new LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color(0xff4b82ff),
                    const Color(0xff00209b)
                    // Colors.blue.withOpacity(0.4),
                  ],
                ),
              ),
              child: Center(
                child: Text(
                  "Interest 1",
                  style: textStyle(
                    size: 15,
                  ),
                ),
              ),
            ),
    );
  }
}
