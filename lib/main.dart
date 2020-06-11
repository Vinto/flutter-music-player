import 'package:flutter/material.dart';

void main() => runApp(AppPlayer());

class AppPlayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Player(title: 'Yolo Music'),
    );
  }
}

class Player extends StatefulWidget {
  Player({this.title});
  final String title;

  @override
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD9E2EC),
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontFamily: 'Firasans',
            color: Color(0xFFE0FCFF),
          ),
        ),
        backgroundColor: Color(0xFF627D98),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Track',
              style: TextStyle(
                fontSize: 60.0,
                fontFamily: 'Firasans',
                color: Color(0xFF9FB3C8),
                letterSpacing: 2.0,
              ),
            ),
            Text(
              '$_counter',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 80.0,
                color: Color(0xFF486581),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF627D98),
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(
          Icons.play_arrow,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFFE0E8F9),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.pause,
              color: Color(0xFF486581),
            ),
            Icon(
              Icons.stop,
              color: Color(0xFF486581),
            ),
            Icon(
              Icons.shuffle,
              color: Color(0xFF486581),
            ),
            Padding(
              padding: EdgeInsets.all(32.0),
            ),
          ],
        ),
      ),
    );
  }
}
