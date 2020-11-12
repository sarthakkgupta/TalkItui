import 'package:flutter/material.dart';
import 'package:talkit/TopicsCommentPage.dart';
import 'package:talkit/TopicsPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Talk It Out',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
      routes: {
        '/TopicCommentPage': (ctx) => TopicCommentPage(),
       // '/threadsPage': (ctx) => ThreadsPage()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Widget> _pages = [TopicssPage(), TopicssPage()];
  int _selectedPageIndex = 0;
  int isLiked1 = 0;
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.black,
          size: 30,
        ),
        title: Text(
          "TalkItOut",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.info_outline,
                color: Colors.black,
                size: 30,
              ),
              Container(
                width: 20,
              ),
              Icon(
                Icons.notifications_none,
                color: Colors.black,
                size: 30,
              ),
              Container(
                width: 5,
              ),
            ],
          ),
        ],
      ),
      body: SafeArea(child: _pages[_selectedPageIndex]),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          width: MediaQuery.of(context).size.width * 100,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => _selectPage(0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Column(
                    children: [
                      Container(
                        height: 3,
                        width: MediaQuery.of(context).size.width * 0.5,
                        color: _selectedPageIndex == 0
                            ? Color.fromRGBO(200, 96, 123, 1)
                            : Colors.white,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.people_outline,
                            color: _selectedPageIndex == 0
                                ? Color.fromRGBO(200, 96, 123, 1)
                                : Colors.grey,
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.025),
                          Column(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.010,
                              ),
                              Text(
                                "Anonymous",
                                style: TextStyle(
                                    color: _selectedPageIndex == 0
                                        ? Colors.black
                                        : Colors.grey,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15),
                              ),
                              Text(
                                "Community",
                                style: TextStyle(
                                    color: _selectedPageIndex == 0
                                        ? Colors.black
                                        : Colors.grey,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () => _selectPage(1),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Column(
                    children: [
                      Container(
                        height: 3,
                        width: MediaQuery.of(context).size.width * 0.5,
                        color: _selectedPageIndex == 1
                            ? Color.fromRGBO(200, 96, 123, 1)
                            : Colors.white,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.supervised_user_circle,
                            color: _selectedPageIndex == 1
                                ? Color.fromRGBO(200, 96, 123, 1)
                                : Colors.grey,
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.025),
                          Column(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.010,
                              ),
                              Text(
                                "Counselor",
                                style: TextStyle(
                                    color: _selectedPageIndex == 1
                                        ? Colors.black
                                        : Colors.grey,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15),
                              ),
                              Text(
                                "Support",
                                style: TextStyle(
                                    color: _selectedPageIndex == 1
                                        ? Colors.black
                                        : Colors.grey,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
