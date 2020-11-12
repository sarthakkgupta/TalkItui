import 'package:flutter/material.dart';
import 'package:talkit/cards/trending.dart';

class TopicssPage extends StatefulWidget {
  @override
  _TopicssPageState createState() => _TopicssPageState();
}

class _TopicssPageState extends State<TopicssPage> {
  @override
  Widget build(BuildContext context) {
    //final mq = MediaQuery.of(context).size.height;
    return  SingleChildScrollView(
          child: Column(
        children: [
          Trending(),
          Trending()
        ],
      ),
    )
    ;
  }
}
