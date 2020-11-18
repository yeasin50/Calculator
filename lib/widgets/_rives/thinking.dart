import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

class ThinkingRive extends StatefulWidget {
  ThinkingRive({Key key}) : super(key: key);

  @override
  _ThinkingRiveState createState() => _ThinkingRiveState();
}

class _ThinkingRiveState extends State<ThinkingRive> {
  Artboard _riveArtBoard;
  RiveAnimationController _controller;

  /// Tracks if the animation is playing by whether controller is running.
  bool get isPlaying => _controller?.isActive ?? false;

  void _togglePlay() {
    setState(() {
      _controller.isActive = !_controller.isActive;
    });
  }

  @override
  void initState() {
    //load the animation from the bundle
    rootBundle.load("assets/rives/thinking+smile.riv").then((data) async {
      final file = RiveFile();

      //load the riveFile from BinaryData
      if (file.import(data)) {
        // The artboard is the root of the animation and gets drawn in the
        // Rive widget.
        final artBoard = file.mainArtboard;

        artBoard.addController(_controller = SimpleAnimation("thinking"));
        setState(() {
          _riveArtBoard = artBoard;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _riveArtBoard == null
            ? const SizedBox()
            : Rive(artboard: _riveArtBoard),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _togglePlay,
        tooltip: isPlaying ? 'Pause' : 'Play',
        child: Icon(
          isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}
