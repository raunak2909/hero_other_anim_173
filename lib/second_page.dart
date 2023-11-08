import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  String tag;
  SecondPage({required this.tag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second'),
      ),
      body: Column(
        children: [
          Hero(
            tag: tag,
            child: Container(
              height: 400,
             color: Colors.primaries[int.parse(tag)],
            ),
          ),
          AnimatedTextKit(
              animatedTexts: [
                FadeAnimatedText("Hello", textStyle: TextStyle(fontSize: 34)),
                FadeAnimatedText("World", textStyle: TextStyle(fontSize: 34)),
                TyperAnimatedText("Welcome to Flutter", textStyle: TextStyle(fontSize: 34))
              ],
            repeatForever: true,
          )
        ],
      ),
    );
  }
}
