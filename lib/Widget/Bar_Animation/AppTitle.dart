import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:video_player/video_player.dart';

class AppTitle extends StatefulWidget {
  @override
  State<AppTitle> createState() => _AppTitle();
}

class _AppTitle extends State<AppTitle> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/Video/Nike_Promo.mp4');

    _initializeVideoPlayerFuture = _controller.initialize().then((_) {
      setState(() {});
      _controller.setVolume(0.0);
      _controller.play();
      _controller.setLooping(true);
    });
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Container(
      padding: EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight,
      // color: Color.fromARGB(255, 90, 74, 74),
      width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.height,

      child: Center(
        child: AspectRatio(
          aspectRatio: _controller.value.aspectRatio,
          child: VideoPlayer(_controller),
        ),
      ),
    );
  }
}
