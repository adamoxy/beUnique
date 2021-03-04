import 'package:beunique_day1/Utiles/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'Bio.dart';
import 'Widgets/BioCirular.dart';

class Passion extends StatefulWidget {
  Passion({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PassionState createState() => _PassionState();
}

class _PassionState extends State<Passion> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body: Container(
          height: _height,
          width: double.infinity,
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: [
                Color(0xFF00209B),
                Color(0xFF0032FF),
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MyRwaper(
                  height: _height,
                  width: _width,
                  top: _width * .035,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: textColor,
                      ),
                      Text(
                        "PASSIONS",
                        style: textStyle(size: 15, isBold: true),
                      ),
                      Container(),
                    ],
                  ),
                ),
                MyRwaper(
                  height: _height,
                  width: _width,
                  top: _width * .035,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "What Are You Into",
                        style: textStyle(size: 32),
                      ),
                    ],
                  ),
                ),
                MyRwaper(
                  width: _width,
                  top: _width * .035,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Pick At Least 5",
                        style: textStyle(size: 14),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: _width,
                  color: Colors.transparent,
                  child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          childAspectRatio: 3 / 2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20),
                      itemCount: 16,
                      itemBuilder: (BuildContext ctx, index) {
                        return new CircleButton(
                            fillColor: true,
                            onTap: () => print("Cool"),
                            iconData: Icons.local_pizza);
                      }),
                ),
                MyRwaper(
                  height: _height,
                  width: _width,
                  top: _width * .035,
                  child: Container(
                    child: Stack(
                      children: [
                        Container(
                          width: _width,
                          height: 1,
                          color: Colors.white,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20, top: 0),
                          width: _width / 4,
                          height: 3,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                MyRwaper(
                  height: _height,
                  width: _width,
                  top: _width * .035,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        SlideRightRoute(
                          page: Bio(
                            height: _height,
                            width: _width,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: _width,
                      height: _width * .15,
                      decoration: new BoxDecoration(
                        gradient: new LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          colors: [
                            Color(0xFF4B6FFF),
                            Color(0xFF2699FB),
                            // Color(0xFF495896),
                          ],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "CONTINUE",
                          style: textStyle(size: 14, isBold: true),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}

class SlideRightRoute extends PageRouteBuilder {
  final Widget page;
  SlideRightRoute({this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(-1, 0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        );
}
