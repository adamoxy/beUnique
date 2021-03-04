import 'dart:math';

import 'package:beunique_day1/Models/ApiResponse.dart';
import 'package:beunique_day1/Utiles/Constants.dart';
import 'package:beunique_day1/WebServices/UserProfileRepo.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'Widgets/BasicInfo.dart';
import 'Widgets/BasicInfoRow.dart';
import 'Widgets/BioBtns.dart';
import 'Widgets/InstagramPosts.dart';
import 'Widgets/InterestsAndPassions.dart';
import 'Widgets/PlayVideoSlider.dart';
import 'Widgets/RowDevider.dart';

class Bio extends StatefulWidget {
  final double height;
  final double width;
  Bio({this.height, this.width});

  @override
  _BioState createState() => _BioState();
}

class _BioState extends State<Bio> {
  bool isEnglish = true;
  int _current = 0;
  Future<ApiResponse> _profileInfo;
  @override
  void initState() {
    super.initState();
    _profileInfo = UserProfileRepo().fetchProfileInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: new BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/background.png"),
                  fit: BoxFit.cover),
            ),
            child: FutureBuilder(
                future: _profileInfo,
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  var apiResponse = snapshot.data;
                  switch (snapshot.connectionState) {
                    case ConnectionState.none:
                      return LoaderFetchingData();
                      break;
                    case ConnectionState.waiting:
                      return LoaderFetchingData();
                      break;
                    case ConnectionState.active:
                      return LoaderFetchingData();
                      break;
                    case ConnectionState.done:
                      if (apiResponse.code == 1) {
                        final List<Widget> imageSliders = apiResponse
                            .object.profile.media
                            .map<Widget>((item) {
                          if (!item.isVideo) {
                            return Container(
                              margin: EdgeInsets.all(0.0),
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    height: widget.height * 3 / 4,
                                    width: widget.width,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(item.filename),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  // Image.network(item, fit: BoxFit.cover, width: 1000.0),
                                  Positioned(
                                    bottom: (widget.height * 3 / 4) / 4,
                                    right: 0.0,
                                    height: 150,
                                    child: Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: 50,
                                            width: 50,
                                            decoration: new BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(50),
                                              ),
                                              gradient: new LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                                  Color(0xFF042093),
                                                  Color(0xFF0032FF),
                                                  Color(0xFF042093)
                                                      .withOpacity(0.5),
                                                ],
                                              ),
                                            ),
                                            child: Center(
                                              child: AnimateLike(
                                                startIcon:
                                                    Icons.favorite_border,
                                                endIcon: Icons.favorite,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 50,
                                            width: 50,
                                            decoration: new BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(50),
                                              ),
                                              gradient: new LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                                  Color(0xFF042093),
                                                  Color(0xFF0032FF),
                                                  Color(0xFF042093)
                                                      .withOpacity(0.5),
                                                ],
                                              ),
                                            ),
                                            child: Center(
                                              child: AnimateLike(
                                                startIcon: Icons
                                                    .thumb_down_alt_outlined,
                                                endIcon: Icons.thumb_up_alt,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 10,
                                    right: 0.0,
                                    left: 0.0,
                                    height: 30,
                                    child: Center(
                                      child: Container(
                                        child: FittedBox(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: apiResponse
                                                .object.profile.media
                                                .map<Widget>((url) {
                                              int index = apiResponse
                                                  .object.profile.media
                                                  .indexOf(url);
                                              return Container(
                                                width: 8.0,
                                                height: 8.0,
                                                margin: EdgeInsets.symmetric(
                                                    vertical: 10.0,
                                                    horizontal: 5.0),
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: _current == index
                                                      ? Colors.white
                                                      : Colors.white60,
                                                ),
                                              );
                                            }).toList(),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          } else {
                            return Container(
                              margin: EdgeInsets.all(0.0),
                              child: Stack(
                                children: <Widget>[
                                  VideoPlayerScreen(
                                    videoUrl: item.video,
                                  ),
                                  Positioned(
                                    bottom: (widget.height * 3 / 4) / 4,
                                    right: 0.0,
                                    height: 150,
                                    child: Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: 50,
                                            width: 50,
                                            decoration: new BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(50),
                                              ),
                                              gradient: new LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                                  Color(0xFF042093),
                                                  Color(0xFF0032FF),
                                                  Color(0xFF042093)
                                                      .withOpacity(0.5),
                                                ],
                                              ),
                                            ),
                                            child: Center(
                                              child: Icon(
                                                Icons.favorite_border,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 50,
                                            width: 50,
                                            decoration: new BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(50),
                                              ),
                                              gradient: new LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                                  Color(0xFF042093),
                                                  Color(0xFF0032FF),
                                                  Color(0xFF042093)
                                                      .withOpacity(0.5),
                                                ],
                                              ),
                                            ),
                                            child: Center(
                                              child: Icon(
                                                Icons.thumb_down_alt_outlined,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 10,
                                    right: 0.0,
                                    left: 0.0,
                                    height: 30,
                                    child: Center(
                                      child: Container(
                                        child: FittedBox(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: apiResponse
                                                .object.profile.media
                                                .map<Widget>((url) {
                                              int index = apiResponse
                                                  .object.profile.media
                                                  .indexOf(url);
                                              return Container(
                                                width: 8.0,
                                                height: 8.0,
                                                margin: EdgeInsets.symmetric(
                                                    vertical: 10.0,
                                                    horizontal: 5.0),
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: _current == index
                                                      ? Colors.white
                                                      : Colors.white60,
                                                ),
                                              );
                                            }).toList(),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }
                        }).toList();

                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CarouselSlider(
                              items: imageSliders,
                              options: CarouselOptions(
                                  height: widget.height * 3 / 4,
                                  autoPlay: false,
                                  viewportFraction: 1.0,
                                  enlargeCenterPage: false,
                                  aspectRatio: 1.0,
                                  onPageChanged: (index, reason) {
                                    setState(() {
                                      _current = index;
                                    });
                                  }),
                            ),
                            defaultPadding(
                              left: 20,
                              top: 20,
                              child: Text(
                                "${apiResponse.object.profile.name}, ${apiResponse.object.profile.age}",
                                style: textStyle(size: 15, isBold: true),
                              ),
                            ),
                            defaultPadding(
                              left: 20,
                              child: Text(
                                apiResponse.object.profile.bio,
                                style: textStyle(
                                  size: 15,
                                ),
                              ),
                            ),
                            defaultPadding(
                              left: 20,
                              top: 20,
                              child: Text(
                                "Basic Info",
                                style: textStyle(size: 15, isBold: true),
                              ),
                            ),
                            Container(
                              height: widget.width / 1.5,
                              margin: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Color(0xFF495896),
                                border: Border.all(
                                  color: Color(0xFF495896),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    BasicInfoRow(
                                      height: 50,
                                      width: widget.width,
                                      varKey: "name",
                                      value: apiResponse.object.profile.name,
                                    ),
                                    RowDevider(),
                                    BasicInfoRow(
                                      height: 50,
                                      width: widget.width,
                                      varKey: "Gender",
                                      value: apiResponse.object.profile.gender,
                                    ),
                                    RowDevider(),
                                    BasicInfoRow(
                                      height: 50,
                                      width: widget.width,
                                      varKey: "Age",
                                      value: apiResponse.object.profile.age
                                          .toString(),
                                    ),
                                    RowDevider(),
                                    BasicInfoRow(
                                      height: 50,
                                      width: widget.width,
                                      varKey: "Location",
                                      value: apiResponse
                                          .object.profile.location.coordinates
                                          .toString(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),

                            /// Basic Info Section
                            apiResponse.object.profile.basicInfo != null
                                ? MyBasicInfo(
                                    width: widget.width,
                                    height: widget.height,
                                    basicInfoList:
                                        apiResponse.object.profile.basicInfo,
                                  )
                                : Container(),

                            /// Instagram Posts Section
                            apiResponse.object.profile.photos != null
                                ? InstagramPosts(
                                    width: widget.width,
                                    height: widget.height,
                                    photos: apiResponse.object.profile.photos,
                                  )
                                : Container(),

                            SizedBox(
                              height: 20,
                            ),

                            /// Instagram Posts Section
                            apiResponse.object.profile.photos != null
                                ? InterestsAndPassions(
                                    width: widget.width,
                                    height: widget.height,
                                    interests:
                                        apiResponse.object.profile.interests,
                                  )
                                : Container(),

                            SizedBox(
                              height: 20,
                            ),
                            BioBtn(
                              btnName: "REPORT",
                              width: widget.width,
                              height: widget.height,
                              fullOpacty: true,
                              color: Color(0xFF081C71),
                            ),
                            BioBtn(
                              btnName: "UNPAIR",
                              width: widget.width,
                              height: widget.height,
                              color: Color(0xFF2699FB),
                            ),
                            BioBtn(
                              btnName: "BLOCK",
                              width: widget.width,
                              height: widget.height,
                            ),
                            Container(
                              height: 30,
                            ),
                            // HomePage(),
                            Container(
                              height: 70,
                            ),
                          ],
                        );
                      } else {
                        return Container();
                      }
                      break;
                    default:
                      return null;
                      break;
                  }
                }),
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<int> data = [1, 2, 3];

  double radius = 50.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 3.0,
      color: Colors.white,
      child: Stack(children: [
        Positioned(
          top: 0,
          left: radius,
          child: CircleAvatar(
            radius: radius * .3,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FittedBox(child: Text("x : ")),
                ],
              ),
            ),
            backgroundImage: AssetImage("images/c1.jpeg"),
          ),
        ),
        Positioned(
          top: radius * .7,
          left: radius * 1.09999,
          child: CircleAvatar(
            radius: radius * .5,
            child: Center(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FittedBox(child: Text("x : ")),
                FittedBox(child: Text("Y: ")),
              ],
            )),
            backgroundImage: AssetImage("images/c1.jpeg"),
          ),
        ),
        Positioned(
          top: radius * 1.7,
          left: radius * 1.3,
          child: CircleAvatar(
            radius: radius * .7,
            child: Center(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FittedBox(child: Text("x : ")),
                FittedBox(child: Text("Y: ")),
              ],
            )),
            backgroundImage: AssetImage("images/c1.jpeg"),
          ),
        ),
      ]),
    );
  }
}

class HomePage1 extends StatefulWidget {
  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  List<int> data = [1, 2, 3];

  double radius = 70.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height * 2,
      width: radius * 1.3,
      color: Colors.red,
      child: Stack(children: [
        Positioned(
          top: 0,
          left: radius,
          child: CircleAvatar(
            radius: radius * .7,
            child: Center(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FittedBox(child: Text("x : ")),
                FittedBox(child: Text("Y: ")),
              ],
            )),
            backgroundImage: AssetImage("images/c1.jpeg"),
          ),
        ),
        Positioned(
          top: radius * 1.6,
          left: radius * 1.35,
          child: CircleAvatar(
            radius: radius * .5,
            child: Center(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FittedBox(child: Text("x : ")),
                FittedBox(child: Text("Y: ")),
              ],
            )),
            backgroundImage: AssetImage("images/c1.jpeg"),
          ),
        ),
        Positioned(
          top: radius * 2.8,
          left: radius * 1.55,
          child: CircleAvatar(
            radius: radius * .3,
            child: Center(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FittedBox(child: Text("x : ")),
                FittedBox(child: Text("Y: ")),
              ],
            )),
            backgroundImage: AssetImage("images/c1.jpeg"),
          ),
        ),
      ]),
    );
  }
}

class HomePage2 extends StatefulWidget {
  @override
  _HomePage2State createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  List<int> data = [1, 2, 3];

  double radius = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.width / 2,
        color: Colors.black12,
        margin: EdgeInsets.only(top: 100),
        child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [HomePage(), HomePage1()]),
      ),
    );
  }
}

class LoaderFetchingData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      width: 500.0,
      color: Colors.white,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding:
                    EdgeInsets.only(top: mediaQueryData.padding.top + 50.0),
              ),
              SizedBox(width: 250.0, child: Text("Fetching . . . ")),
            ],
          ),
        ),
      ),
    );
  }
}
