import 'package:flutter/material.dart';
import 'package:talkit/TopComments.dart';


class TopicCommentPage extends StatefulWidget {
  @override
  _TopicCommentPageState createState() => _TopicCommentPageState();
}

class _TopicCommentPageState extends State<TopicCommentPage> {
 
  int _selectedPageIndex = 0;
  int isLiked1 = 0;
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void selectTopicCommentPage(BuildContext context) {
    
    Navigator.of(context).pushNamed('/TopicCommentPage');
    print('worked');
  }

  Widget button(String s, int i) {
    return InkWell(
      onTap: () => _selectPage(i),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              color: _selectedPageIndex == i
                  ? Color.fromRGBO(205, 84, 77, 1)
                  : Color.fromRGBO(238, 238, 238, 1),
              border: Border.symmetric()),
          alignment: Alignment.center,
          child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                s,
                style: TextStyle(
                    color:
                        _selectedPageIndex == i ? Colors.white : Colors.black),
              )),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _pages = [
      TopComments(),
      TopComments(),
      TopComments(),
      TopComments(),
    ];

    final mqw = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child:  Column(
            children: [
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
              Container(
                height: 55,
                child: Row(
                  children: [
                    button('Top', 0),
                    button('New', 1),
                    button('My', 2),
                    button('Counselor', 3)
                  ],
                ),
              ),
              _pages[_selectedPageIndex]
            ],
          ),
        ),
      
    );
  }
}
