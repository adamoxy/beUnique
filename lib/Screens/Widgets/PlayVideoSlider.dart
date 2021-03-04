import 'dart:async';

import 'package:animate_icons/animate_icons.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  final String videoUrl;

  VideoPlayerScreen({Key key, this.videoUrl = ""}) : super(key: key);

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.network(
      widget.videoUrl,
    );
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return VideoPlayer(_controller);
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: InkWell(
        onTap: () {
          setState(() {
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              _controller.play();
            }
          });
        },
        child: Container(
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
                Color(0xFF042093).withOpacity(0.5),
              ],
            ),
          ),
          child: Center(
              child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
            color: Colors.white,
          )),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class AnimateLike extends StatefulWidget {
  final IconData startIcon;
  final IconData endIcon;
  AnimateLike({this.startIcon, this.endIcon});

  @override
  _AnimateLikeState createState() => _AnimateLikeState();
}

class _AnimateLikeState extends State<AnimateLike> {
  bool _active = true;

  @override
  Widget build(BuildContext context) {
    return AnimateIcons(
      startIcon: widget.startIcon,
      endIcon: widget.endIcon,
      startTooltip: 'Icons.add_circle',
      endTooltip: 'Icons.add_circle_outline',
      onStartIconPress: () {
        setState(() {
          _active = !_active;
        });
        return true;
      },
      onEndIconPress: () {
        setState(() {
          _active = !_active;
        });
        return true;
      },
      duration: Duration(milliseconds: 500),
      startIconColor: Colors.white,
      endIconColor: Colors.white,
      clockwise: false,
    );
  }

  dispose() {
    this.dispose();
  }
}

class AnimateFavorite extends StatefulWidget {
  final IconData startIcon;
  final IconData endIcon;
  AnimateFavorite({this.startIcon, this.endIcon});

  @override
  _AnimateFavoriteState createState() => _AnimateFavoriteState();
}

class _AnimateFavoriteState extends State<AnimateFavorite> {
  @override
  Widget build(BuildContext context) {
    return AnimateIcons(
      startIcon: widget.startIcon,
      endIcon: widget.endIcon,
      startTooltip: 'Icons.add_circle',
      endTooltip: 'Icons.add_circle_outline',
      onStartIconPress: () {
        print("Clicked on Add Icon");
        return true;
      },
      onEndIconPress: () {
        print("Clicked on Close Icon");
        return true;
      },
      duration: Duration(milliseconds: 500),
      startIconColor: Colors.white,
      endIconColor: Colors.white,
      clockwise: false,
    );
  }

  dispose() {
    this.dispose();
  }
}
