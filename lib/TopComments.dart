import 'package:flutter/material.dart';
import 'package:talkit/cards/comments.dart';

import 'package:talkit/model/commentsdata.dart';
import 'package:talkit/model/replydata.dart';

class TopComments extends StatefulWidget {
  @override
  _TopCommentsState createState() => _TopCommentsState();
}

class _TopCommentsState extends State<TopComments> {
   final List<Commentsdata> _commentsdatalist = [
    Commentsdata(
      id: 't1',
      title: "It's a very complicated story. I'll tell you in short. I was best friends with this guy and he already had a girlfriend. I knew about it. It was long distance. He kept giving hopes about how he would break up with her as he has developed feelings for me now. I started developing feelings too. I had never felt like that with anyone like how I used to feel with him. I generally don't get attached to people, But I was SO attached. It's hard to explain. Then on and off he kept saying how once he'll break up with his gf, next month he's like he doesn't want to break up, the month after break up, again, no break up. So he kept doing this to me in a loop. I was really heartbroken. It was a complete mess. A lot more things happened. I just feel sometimes, thot shouldn't have made friends with him. was isolated from all my other friends. I used to be with him 24x7. I just wonder at times how things would be different of weren't friends with him and had other people. I'm fine now. No grudges, but it took a long time to get over",
      date: DateTime.now(),
      nooflikes: 2,
      replies: [
        Replydata(
       
        title: 'thanks',
        date: DateTime.now(),
        nooflikes: 0,
        liked: false),
      ],
      liked: false
    ),
      Commentsdata(
      id: 't2',
      title: "It's a very complicated story. I'll tell you in short. I was best friends with this guy and he already had a girlfriend. I knew about it. It was long distance. He kept giving hopes about how he would break up with her as he has developed feelings for me now. I started developing feelings too. I had never felt like that with anyone like how I used to feel with him. I generally don't get attached to people, But I was SO attached. It's hard to explain. Then on and off he kept saying how once he'll break up with his gf, next month he's like he doesn't want to break up, the month after break up, again, no break up. So he kept doing this to me in a loop. I was really heartbroken. It was a complete mess. A lot more things happened. I just feel sometimes, thot shouldn't have made friends with him. was isolated from all my other friends. I used to be with him 24x7. I just wonder at times how things would be different of weren't friends with him and had other people. I'm fine now. No grudges, but it took a long time to get over",
      date: DateTime.now(),
      liked: false,
      nooflikes: 2,
        replies:  [
            Replydata(
       
        title: 'thanks',
        date: DateTime.now(),
        nooflikes: 0,
        liked: false),
          Replydata(
       
        title: 'good',
        date: DateTime.now(),
        nooflikes: 0,
        liked: false),
    Replydata(
       
        title: 'nice',
        date: DateTime.now(),
        nooflikes: 0,
        liked: false),
    Replydata(
       
        title: 'yes',
        date: DateTime.now(),
        nooflikes: 0,
        liked: false),
          Replydata(
       
        title: 'yes',
        date: DateTime.now(),
        nooflikes: 0,
        liked: false),
          Replydata(
        title: 'yes',
        date: DateTime.now(),
        nooflikes: 0,
        liked: false),
  ]

    ),
  ];
  @override
  Widget build(BuildContext context) {

   return Comments(_commentsdatalist);
  }
}
