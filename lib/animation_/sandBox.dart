import 'package:flutter/material.dart';

class SandBox extends StatefulWidget {
  SandBox({Key key}) : super(key: key);

  @override
  _SandBoxState createState() => _SandBoxState();
}

class _SandBoxState extends State<SandBox> {
  double _margin = 0;
  double _opacity = 1;
  double _width = 200;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        margin: EdgeInsets.all(_margin),
        width: _width,
        color: _color,
        duration: Duration(seconds: 1),
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () => setState(() => _margin = 50),
              child: Text("Animate margin"),
            ),
            RaisedButton(
              onPressed: () => setState(() => _color = Colors.purple),
              child: Text("Animate color"),
            ),
            RaisedButton(
              onPressed: () => setState(() => _width = 400),
              child: Text("Animate width"),
            ),
            RaisedButton(
              onPressed: () => setState(() => _opacity = 0),
              child: Text("Animate opacity"),
            ),
            AnimatedOpacity(
              duration: Duration(seconds: 2),
              opacity: _opacity,
              child: Text(
                "Ulaaaaaaaa",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
