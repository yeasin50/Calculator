import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

class RiveFlutterH extends StatefulWidget {
  RiveFlutterH({Key key}) : super(key: key);

  @override
  _RiveFlutterHState createState() => _RiveFlutterHState();
}

class _RiveFlutterHState extends State<RiveFlutterH> {
  void _togglePlay() {
    setState(() => _controller.isActive = !_controller.isActive);
  }

  /// Tracks if the animation is playing by whether controller is running.
  bool get isPlaying => _controller?.isActive ?? false;

  Artboard _riveArtboard, _artboard;
  RiveAnimationController _controller;
  @override
  void initState() {
    super.initState();
    // Load the animation file from the bundle, note that you could also
    // download this. The RiveFile just expects a list of bytes.
    rootBundle.load('assets/rives/thinking_.riv').then(
      (data) async {
        final file = RiveFile();

        // Load the RiveFile from the binary data.
        if (file.import(data)) {
          // The artboard is the root of the animation and gets drawn in the
          // Rive widget.
          final artboard = file.mainArtboard;
          // Add a controller to play back a known animation on the main/default
          // artboard.We store a reference to it so we can toggle playback.
          artboard.addController(_controller = SimpleAnimation('thinking'));
          setState(() => _riveArtboard = artboard);
        }
      },
    );
    rootBundle.load('assets/rives/smile_idle.riv').then(
      (data) async {
        final file = RiveFile();

        // Load the RiveFile from the binary data.
        if (file.import(data)) {
          // The artboard is the root of the animation and gets drawn in the
          // Rive widget.
          final artboard = file.mainArtboard;
          // Add a controller to play back a known animation on the main/default
          // artboard.We store a reference to it so we can toggle playback.
          artboard.addController(_controller = SimpleAnimation('smile'));
          setState(() => _artboard = artboard);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _riveArtboard == null
            ? const SizedBox()
            : Column(children: <Widget>[
                Text("Hey"),
                Expanded(
                  child: Container(
                    width: 200,
                    height: 200,
                    child: Rive(artboard: _artboard),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 200,
                    height: 200,
                    child: Rive(artboard: _riveArtboard),
                  ),
                ),
              ]),
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
