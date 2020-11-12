import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Trending extends StatefulWidget {
  @override
  _TrendingState createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
  @override
  Widget build(BuildContext context) {
    final mqw = MediaQuery.of(context).size.width;
    void selectTopicCommentPage(BuildContext context) {
      Navigator.of(context).pushNamed('/TopicCommentPage');
      print('worked');
    }

    return Card(
      elevation: 1,
      child: SingleChildScrollView(
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12.0, left: 20, bottom: 12),
                child: Text("Trending",
                    style: TextStyle(
                        color: Color.fromRGBO(200, 96, 123, 1),
                        fontWeight: FontWeight.w800,
                        fontSize: 20)),
              ),
              Container(
                  width: mqw * 1,
                  height: mqw * 9 / 16,
                  child: Stack(alignment: Alignment.center, children: [
                    Opacity(
                      opacity: 0.8,
                      child: Image.network(
                        'https://preply.com/wp-content/uploads/2018/04/pexels-photo-100733.jpeg',
                      ),
                    ),
                    Opacity(
                      opacity: 1,
                      child: Text(
                        'Let out a thing of the past that bothers you',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                        textAlign: TextAlign.center,
                        softWrap: true,
                      ),
                    )
                  ])),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.favorite_border,
                          size: 30,
                        ),
                      ),
                      Text('10')
                    ],
                  )),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.comment,
                          size: 30,
                        ),
                      ),
                      Text('18')
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(238, 238, 238, 1),
                      border: Border.symmetric()),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w300
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text:
                                      "It's a very complicated story. I'll tell you in short. I was best friends with this guy and he already had a girlfriend. I knew about it. It was long distance. He kept giving hopes about how he" +
                                          "..."),
                              TextSpan(
                                text: ' Continue Reading',
                                recognizer: TapGestureRecognizer()
                                  ..onTap =
                                      () => selectTopicCommentPage(context),
                                style: new TextStyle(
                                    color: Color.fromRGBO(205, 84, 77, 1),
                                    fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () => selectTopicCommentPage(context),
                    child: Text(
                      'View All Comments',
                      style: new TextStyle(
                          color: Color.fromRGBO(205, 84, 77, 1), fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
