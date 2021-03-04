import 'package:beunique_day1/Utiles/Constants.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Bio.dart';
import 'Passion.dart';

class Passionate extends StatelessWidget {
  Passionate({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffe4e4e4),
        body: Container(
          decoration: new BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background.png"), fit: BoxFit.cover),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                MyRwaper(
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
                  width: _width,
                  top: _width * .035,
                  child: Text(
                    "What are you into?",
                    style: TextStyle(
                      fontFamily: 'Helvetica Neue',
                      fontSize: 32,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                MyRwaper(
                  width: _width,
                  top: _width * .035,
                  child: Text(
                    'Pick at least 5',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 14,
                      color: const Color(0xffffffff),
                      height: 1.7142857142857142,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                  ),
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      height: 736.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const AssetImage(''),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(101.0, 453.0),
                      child: Container(
                        width: 106.0,
                        height: 106.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.elliptical(9999.0, 9999.0)),
                          color: const Color(0xff495896),
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(202.0, 338.0),
                      child: SizedBox(
                        width: 54.0,
                        child: Text(
                          'GAMING',
                          style: TextStyle(
                            fontFamily: 'Helvetica Neue',
                            fontSize: 12,
                            color: const Color(0xffffffff),
                            height: 2.5,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(364.0, 386.0),
                      child: Container(
                        width: 110.0,
                        height: 110.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.elliptical(9999.0, 9999.0)),
                          color: const Color(0xff495896),
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(-16.0, 429.0),
                      child: Transform.rotate(
                        angle: 0.0175,
                        child: Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.elliptical(9999.0, 9999.0),
                            ),
                            color: const Color(0xff495896),
                          ),
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(74.3, 268.0),
                      child: SizedBox(
                        width: 81.0,
                        child: Text(
                          'COLLECTING',
                          style: TextStyle(
                            fontFamily: 'Helvetica Neue',
                            fontSize: 12,
                            color: const Color(0xffffffff),
                            height: 2.5,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(60.0, 220.0),
                      child: SizedBox(
                        width: 110.0,
                        height: 110.0,
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(-42.0, 0.0, 206.0, 137.0),
                              size: Size(110.0, 110.0),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: const AssetImage(''),
                                    fit: BoxFit.fill,
                                    colorFilter: new ColorFilter.mode(
                                        Colors.black.withOpacity(0.2),
                                        BlendMode.dstIn),
                                  ),
                                ),
                              ),
                            ),
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 110.0, 110.0),
                              size: Size(110.0, 110.0),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  color: const Color(0xff495896),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(46.5, 599.5),
                      child: SvgPicture.string(
                        _svg_waarcs,
                        allowDrawingOutsideViewBox: true,
                      ),
                    ),
                    Container(),
                    Transform.translate(
                      offset: Offset(74.3, 268.0),
                      child: SizedBox(
                        width: 81.0,
                        child: Text(
                          'COLLECTING',
                          style: TextStyle(
                            fontFamily: 'Helvetica Neue',
                            fontSize: 12,
                            color: const Color(0xffffffff),
                            height: 2.5,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(190.0, 218.0),
                      child: SizedBox(
                        width: 64.0,
                        height: 64.0,
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(-11.0, 0.0, 104.0, 148.0),
                              size: Size(64.0, 64.0),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: const AssetImage(''),
                                    fit: BoxFit.fill,
                                    colorFilter: new ColorFilter.mode(
                                        Colors.black.withOpacity(0.77),
                                        BlendMode.dstIn),
                                  ),
                                ),
                              ),
                            ),
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 64.0, 64.0),
                              size: Size(64.0, 64.0),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  color: const Color(0xff495896),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(208.0, 243.0),
                      child: SizedBox(
                        width: 28.0,
                        child: Text(
                          'ART',
                          style: TextStyle(
                            fontFamily: 'Helvetica Neue',
                            fontSize: 12,
                            color: const Color(0xffffffff),
                            height: 2.5,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(272.0, 230.0),
                      child: SizedBox(
                        width: 90.0,
                        height: 90.0,
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(-24.0, -3.0, 144.0, 96.0),
                              size: Size(90.0, 90.0),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: const AssetImage(''),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 90.0, 90.0),
                              size: Size(90.0, 90.0),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  color: const Color(0x68495896),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(289.0, 268.0),
                      child: SizedBox(
                        width: 56.0,
                        child: Text(
                          'SINGING',
                          style: TextStyle(
                            fontFamily: 'Helvetica Neue',
                            fontSize: 12,
                            color: const Color(0xffffffff),
                            height: 2.5,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(380.0, 246.0),
                      child: SizedBox(
                        width: 98.0,
                        height: 98.0,
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds:
                                  Rect.fromLTWH(-100.0, -76.0, 310.0, 174.0),
                              size: Size(98.0, 98.0),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: const AssetImage(''),
                                    fit: BoxFit.fill,
                                    colorFilter: new ColorFilter.mode(
                                        Colors.black.withOpacity(0.55),
                                        BlendMode.dstIn),
                                  ),
                                ),
                              ),
                            ),
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 98.0, 98.0),
                              size: Size(98.0, 98.0),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  color: const Color(0xff495896),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(400.0, 288.0),
                      child: SizedBox(
                        width: 58.0,
                        child: Text(
                          'FASHION',
                          style: TextStyle(
                            fontFamily: 'Helvetica Neue',
                            fontSize: 12,
                            color: const Color(0xffffffff),
                            height: 2.5,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(-17.0, 225.0),
                      child: SizedBox(
                        width: 64.0,
                        height: 64.0,
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(-33.0, -11.0, 130.0, 86.0),
                              size: Size(64.0, 64.0),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: const AssetImage(''),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 64.0, 64.0),
                              size: Size(64.0, 64.0),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  color: const Color(0xff495896),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(-7.0, 250.0),
                      child: SizedBox(
                        width: 44.0,
                        child: Text(
                          'PARTY',
                          style: TextStyle(
                            fontFamily: 'Helvetica Neue',
                            fontSize: 12,
                            color: const Color(0xffffffff),
                            height: 2.5,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(-34.0, 308.0),
                      child: SizedBox(
                        width: 104.0,
                        height: 104.0,
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(-41.0, 0.0, 186.0, 124.0),
                              size: Size(104.0, 104.0),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: const AssetImage(''),
                                    fit: BoxFit.fill,
                                    colorFilter: new ColorFilter.mode(
                                        Colors.black.withOpacity(0.48),
                                        BlendMode.dstIn),
                                  ),
                                ),
                              ),
                            ),
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 104.0, 104.0),
                              size: Size(104.0, 104.0),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(-13.0, 355.0),
                      child: SizedBox(
                        width: 58.0,
                        child: Text(
                          'READING',
                          style: TextStyle(
                            fontFamily: 'Helvetica Neue',
                            fontSize: 12,
                            color: const Color(0xffffffff),
                            height: 2.5,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(83.0, 348.0),
                      child: SizedBox(
                        width: 96.0,
                        height: 96.0,
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(-64.0, -45.0, 234.0, 157.0),
                              size: Size(96.0, 96.0),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: const AssetImage(''),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 96.0, 96.0),
                              size: Size(96.0, 96.0),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  color: const Color(0xff495896),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(101.0, 389.0),
                      child: SizedBox(
                        width: 60.0,
                        child: Text(
                          'DANCING',
                          style: TextStyle(
                            fontFamily: 'Helvetica Neue',
                            fontSize: 12,
                            color: const Color(0xffffffff),
                            height: 2.5,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(183.0, 298.0),
                      child: SizedBox(
                        width: 92.0,
                        height: 92.0,
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(-47.0, 0.0, 179.0, 100.0),
                              size: Size(92.0, 92.0),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: const AssetImage(''),
                                    fit: BoxFit.fill,
                                    colorFilter: new ColorFilter.mode(
                                        Colors.black.withOpacity(0.75),
                                        BlendMode.dstIn),
                                  ),
                                ),
                              ),
                            ),
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 92.0, 92.0),
                              size: Size(92.0, 92.0),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.elliptical(9999.0, 9999.0),
                                  ),
                                  color: const Color(0xff495896),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(202.0, 337.0),
                      child: SizedBox(
                        width: 54.0,
                        child: Text(
                          'GAMING',
                          style: TextStyle(
                            fontFamily: 'Helvetica Neue',
                            fontSize: 12,
                            color: const Color(0xffffffff),
                            height: 2.5,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(316.0, 326.0),
                      child: SizedBox(
                        width: 64.0,
                        height: 64.0,
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(-12.0, -13.0, 138.0, 77.0),
                              size: Size(64.0, 64.0),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: const AssetImage(''),
                                    fit: BoxFit.fill,
                                    colorFilter: new ColorFilter.mode(
                                        Colors.black.withOpacity(0.45),
                                        BlendMode.dstIn),
                                  ),
                                ),
                              ),
                            ),
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 64.0, 64.0),
                              size: Size(64.0, 64.0),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  color: const Color(0xff495896),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(330.0, 353.0),
                      child: SizedBox(
                        width: 36.0,
                        child: Text(
                          'PETS',
                          style: TextStyle(
                            fontFamily: 'Helvetica Neue',
                            fontSize: 12,
                            color: const Color(0xffffffff),
                            height: 2.5,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(212.0, 397.0),
                      child: SizedBox(
                        width: 136.0,
                        height: 136.0,
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(-102.0, -8.0, 304.0, 152.0),
                              size: Size(136.0, 136.0),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: const AssetImage(''),
                                    fit: BoxFit.fill,
                                    colorFilter: new ColorFilter.mode(
                                        Colors.black.withOpacity(0.26),
                                        BlendMode.dstIn),
                                  ),
                                ),
                              ),
                            ),
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 136.0, 136.0),
                              size: Size(136.0, 136.0),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  color: const Color(0xff495896),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(245.9, 448.0),
                      child: SizedBox(
                        width: 68.0,
                        child: Text(
                          'WATCHING\nMOVIES',
                          style: TextStyle(
                            fontFamily: 'Helvetica Neue',
                            fontSize: 12,
                            color: const Color(0xffffffff),
                            height: 1.6666666666666667,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(99.0, 453.0),
                      child: Container(
                        width: 111.0,
                        height: 111.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.elliptical(9999.0, 9999.0)),
                          gradient: LinearGradient(
                            begin: Alignment(0.0, -0.33),
                            end: Alignment(0.0, 1.0),
                            colors: [
                              const Color(0xff4b82ff),
                              const Color(0xff00209b)
                            ],
                            stops: [0.0, 1.0],
                          ),
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(359.0, 386.0),
                      child: Container(
                        width: 111.0,
                        height: 111.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.elliptical(9999.0, 9999.0)),
                          gradient: LinearGradient(
                            begin: Alignment(0.0, -0.33),
                            end: Alignment(0.0, 1.0),
                            colors: [
                              const Color(0xff4b82ff),
                              const Color(0xff00209b)
                            ],
                            stops: [0.0, 1.0],
                          ),
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(-18.0, 426.0),
                      child: Container(
                        width: 103.0,
                        height: 104.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.elliptical(9999.0, 9999.0)),
                          gradient: LinearGradient(
                            begin: Alignment(0.0, -0.33),
                            end: Alignment(0.0, 1.0),
                            colors: [
                              const Color(0xff4b82ff),
                              const Color(0xff00209b)
                            ],
                            stops: [0.0, 1.0],
                          ),
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(115.5, 501.0),
                      child: SizedBox(
                        width: 77.0,
                        child: Text(
                          'ADVENTURE',
                          style: TextStyle(
                            fontFamily: 'Helvetica Neue',
                            fontSize: 12,
                            color: const Color(0xffffffff),
                            height: 2.5,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(373.8, 435.0),
                      child: SizedBox(
                        width: 92.0,
                        child: Text(
                          'SOCIAL MEDIA',
                          style: TextStyle(
                            fontFamily: 'Helvetica Neue',
                            fontSize: 12,
                            color: const Color(0xffffffff),
                            height: 2.5,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(1.0, 472.0),
                      child: SizedBox(
                        width: 66.0,
                        child: Text(
                          'OUTDOOR',
                          style: TextStyle(
                            fontFamily: 'Helvetica Neue',
                            fontSize: 12,
                            color: const Color(0xffffffff),
                            height: 2.5,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
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
      ),
    );
  }
}

const String _svg_waarcs =
    '<svg viewBox="46.5 599.5 321.0 1.0" ><path transform="translate(46.5, 599.5)" d="M 0 0 L 321 0" fill="none" fill-opacity="0.25" stroke="#e3e3e3" stroke-width="1" stroke-opacity="0.25" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(64.5, 599.5)" d="M 0 0 L 69 0" fill="none" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
