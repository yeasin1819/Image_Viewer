import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Viewer'),
          centerTitle: true,
        ),
        body: Images(),
      ),
    );
  }
}

class Images extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ImagesState();
  }
}

class _ImagesState extends State<Images> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
            Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                  splashColor: Colors.transparent,
                  highlightColor:
                      Colors.transparent, // makes highlight invisible too
                  hoverColor: Colors.transparent,
                  onPressed: (){
                    setState(() {
                      
                    });
                  },
                  child: Image.asset('images/' + (Random().nextInt(20) + 1).toString() + '.png')),
            ),
          ),
        ],
      ),
    );
  }
}
