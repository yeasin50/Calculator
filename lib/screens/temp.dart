import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Painters extends StatefulWidget {
  @override
  _PaintersState createState() => _PaintersState();
}

class _PaintersState extends State<Painters> {
  String text = """
  So I never really knew you
God I really tried to
Blindsided, addicted
Felt we could really do this
But really I was foolish
Hindsight it's
Obvious
Talking with my lawyer she said
"Where'd you find this guy?"
I said, "Young people fall in love"
"With the wrong people sometimes"
Some mistakes get made
That's alright, that's okay
You can think that you're in love
When you're really just in pain
Some mistakes get made
That's alright, that's okay
In the end it's better for me
That's the moral of the story babe
Oh, oh
Oh-ooh-oh
Woo, oh
Oh-ooh
It's funny how a memory
Turns into a bad dream
When running wild turns volatile
Remember how we painted our house?
Just like my grandparents did, so romantic
But we fought the whole time
Should have seen the signs, yeah
  """;

  @override
  Widget build(BuildContext context) {
    ScrollController _scrollController = new ScrollController(
        // initialScrollOffset: 0.5,
        // keepScrollOffset: true,
        );

    void animAteTOTOP() {
      _scrollController.animateTo(0.50,
          duration: const Duration(
            milliseconds: 300,
          ),
          curve: Curves.easeOut);
    }

    void animAteTOBotton() {
      _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
    }

    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 200,
                    margin: EdgeInsets.all(20),
                    color: Colors.amber,
                    // height: 20,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      controller: _scrollController,
                      child: Text(text),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        text += "A";
                      });
                      animAteTOTOP();
                    },
                    child: Text("A"),
                  ),
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        text += "B";
                      });
                      animAteTOBotton();
                    },
                    child: Text("b"),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
