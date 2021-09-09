import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(title: 'Animated Text Kit'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: ListView(
          children: [
            _typewritter(),
            _rotate(),
            _fade(),
            _typer(),
            _scale(),
            _colorize(),
            _textLiquidFill(),
            _wavy(),
            _flicker(),
          ],
        ),
      ),
    );
  }

  Widget _typewritter() {
    return AnimatedTextKit(
      animatedTexts: [
        TypewriterAnimatedText(
          'Rocky Shamsul Alam',
          textStyle: const TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
          ),
          speed: const Duration(milliseconds: 2000),
        ),
      ],
      totalRepeatCount: 4,
      pause: const Duration(milliseconds: 1000),
      displayFullTextOnTap: true,
      stopPauseOnTap: true,
    );
  }

  Widget _rotate() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const SizedBox(width: 20.0, height: 100.0),
        const Text(
          'Rocky',
          style: TextStyle(fontSize: 43.0),
        ),
        const SizedBox(width: 20.0, height: 100.0),
        DefaultTextStyle(
          style: const TextStyle(
            fontSize: 40.0,
            fontFamily: 'Horizon',
          ),
          child: AnimatedTextKit(
            animatedTexts: [
              RotateAnimatedText('Software Engineer'),
              RotateAnimatedText('Muslim'),
              RotateAnimatedText('Programmer'),
            ],
            onTap: () {
              print("Tap Event");
            },
          ),
        ),
      ],
    );
  }

  Widget _fade() {
    return SizedBox(
      width: 250.0,
      child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
        ),
        child: AnimatedTextKit(
          animatedTexts: [
            FadeAnimatedText('Rocky'),
            FadeAnimatedText('Shamsul'),
            FadeAnimatedText('Alam'),
          ],
          onTap: () {
            print("Tap Event");
          },
        ),
      ),
    );
  }

  Widget _typer() {
    return SizedBox(
      width: 250.0,
      child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 30.0,
          fontFamily: 'Bobbers',
        ),
        child: AnimatedTextKit(
          animatedTexts: [
            TyperAnimatedText('Bsc. in CSE'),
            TyperAnimatedText('at BUBT'),
          ],
          onTap: () {
            print("Tap Event");
          },
        ),
      ),
    );
  }

  Widget _scale() {
    return SizedBox(
      width: 250.0,
      child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 70.0,
          fontFamily: 'Canterbury',
        ),
        child: AnimatedTextKit(
          animatedTexts: [
            ScaleAnimatedText('Think'),
            ScaleAnimatedText('Build'),
            ScaleAnimatedText('Ship'),
          ],
          onTap: () {
            print("Tap Event");
          },
        ),
      ),
    );
  }

  Widget _colorize() {
    const colorizeColors = [
      Colors.purple,
      Colors.blue,
      Colors.yellow,
      Colors.red,
    ];

    const colorizeTextStyle = TextStyle(
      fontSize: 50.0,
      fontFamily: 'Horizon',
    );

    return SizedBox(
      width: 250.0,
      child: AnimatedTextKit(
        animatedTexts: [
          ColorizeAnimatedText(
            'Rocky',
            textStyle: colorizeTextStyle,
            colors: colorizeColors,
          ),
          ColorizeAnimatedText(
            'Shamsul',
            textStyle: colorizeTextStyle,
            colors: colorizeColors,
          ),
          ColorizeAnimatedText(
            'Alam',
            textStyle: colorizeTextStyle,
            colors: colorizeColors,
          ),
        ],
        isRepeatingAnimation: true,
        onTap: () {
          print("Tap Event");
        },
      ),
    );
  }

  Widget _textLiquidFill() {
    return SizedBox(
      width: 250.0,
      child: TextLiquidFill(
        text: 'LIQUIDY',
        waveColor: Colors.blueAccent,
        boxBackgroundColor: Colors.redAccent,
        textStyle: TextStyle(
          fontSize: 80.0,
          fontWeight: FontWeight.bold,
        ),
        boxHeight: 300.0,
      ),
    );
  }

  Widget _wavy() {
    return DefaultTextStyle(
      style: const TextStyle(
        fontSize: 20.0,
      ),
      child: AnimatedTextKit(
        animatedTexts: [
          WavyAnimatedText('Hello World'),
          WavyAnimatedText('Look at the waves'),
        ],
        isRepeatingAnimation: true,
        onTap: () {
          print("Tap Event");
        },
      ),
    );
  }

  Widget _flicker() {
    return SizedBox(
      width: 250.0,
      child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 35,
          color: Colors.white,
          shadows: [
            Shadow(
              blurRadius: 7.0,
              color: Colors.white,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            FlickerAnimatedText('Flicker Frenzy'),
            FlickerAnimatedText('Night Vibes On'),
            FlickerAnimatedText("C'est La Vie !"),
          ],
          onTap: () {
            print("Tap Event");
          },
        ),
      ),
    );
  }
}
