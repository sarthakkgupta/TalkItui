import 'package:flutter/material.dart';

import 'model/commentsdata.dart';
import 'model/replydata.dart';

class ThreadsPage extends StatefulWidget {
  final List<Commentsdata> commentsdata;
  final List<Replydata> replydata;
  final int index;
  ThreadsPage(this.commentsdata, this.index, this.replydata);

  @override
  _ThreadsPageState createState() => _ThreadsPageState();
}

class _ThreadsPageState extends State<ThreadsPage> {
  @override
  Widget build(BuildContext context) {
    final mqw = MediaQuery.of(context).size.width;
  //  final mqh = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Threads",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Icon(
                  Icons.person_pin,
                  color: Colors.blue,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child:
                   Column( children: [
                  Container(
                    width: mqw * 1,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      
                        border: Border.symmetric()),
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        widget.commentsdata[widget.index].title,
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                  //  likebutton(nooflike)
                  InkWell(
                    onTap: () => setState(() {
                      widget.commentsdata[widget.index].liked
                          ? widget.commentsdata[widget.index]
                              .nooflikes-- /*widget.commentsdata[widget.index].liked=false */

                          : widget.commentsdata[widget.index].nooflikes++;
                      widget.commentsdata[widget.index].liked
                          ? widget.commentsdata[widget.index].liked = false
                          : widget.commentsdata[widget.index].liked = true;
                    }),
                    child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              new BoxShadow(
                                color: Colors.grey,
                                blurRadius: 0.5,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            border: Border.symmetric()),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: widget.commentsdata[widget.index].liked
                                  ? Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                      size: 16,
                                    )
                                  : Icon(
                                      Icons.favorite_border,
                                      color: Colors.red,
                                      size: 16,
                                    ),
                            ),
                            widget.commentsdata[widget.index].nooflikes == 0
                                ? Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text("Like"))
                                : Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(widget
                                        .commentsdata[widget.index].nooflikes
                                        .toString()))
                          ],
                        )),
                  )
                ]),
              ),
              Container(
                child: ListView.builder(
                    itemBuilder: (ctx, index1) {
                      return Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Icon(
                                  Icons.person_pin,
                                  color: Colors.blue,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Stack(
                                    alignment: AlignmentDirectional.bottomEnd,
                                    children: [
                                      Container(
                                        width: mqw * 0.8,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color.fromRGBO(
                                                238, 238, 238, 1),
                                            border: Border.symmetric()),
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            widget.commentsdata[widget.index]
                                                .replies[index1].title,
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ),
                                      ),
                                      //  likebutton(nooflike)
                                      InkWell(
                                        onTap: () => setState(() {
                                          widget.commentsdata[widget.index]
                                                  .replies[index1].liked
                                              ? widget
                                                  .commentsdata[widget.index]
                                                  .replies[index1]
                                                  .nooflikes-- /*widget.commentsdata[index].liked=false */

                                              : widget
                                                  .commentsdata[widget.index]
                                                  .replies[index1]
                                                  .nooflikes++;
                                          widget.commentsdata[widget.index]
                                                  .replies[index1].liked
                                              ? widget
                                                  .commentsdata[widget.index]
                                                  .replies[index1]
                                                  .liked = false
                                              : widget
                                                  .commentsdata[widget.index]
                                                  .replies[index1]
                                                  .liked = true;
                                        }),
                                        child: Container(
                                            decoration: BoxDecoration(
                                                boxShadow: [
                                                  new BoxShadow(
                                                    color: Colors.grey,
                                                    blurRadius: 0.5,
                                                  ),
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Colors.white,
                                                border: Border.symmetric()),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(5.0),
                                                  child: widget
                                                          .commentsdata[
                                                              widget.index]
                                                          .replies[index1]
                                                          .liked
                                                      ? Icon(
                                                          Icons.favorite,
                                                          color: Colors.red,
                                                          size: 16,
                                                        )
                                                      : Icon(
                                                          Icons.favorite_border,
                                                          color: Colors.red,
                                                          size: 16,
                                                        ),
                                                ),
                                                widget
                                                            .commentsdata[widget
                                                                .index]
                                                            .replies[index1]
                                                            .nooflikes ==
                                                        0
                                                    ? Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(5.0),
                                                        child: Text("Like"))
                                                    : Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(5.0),
                                                        child: Text(widget
                                                            .commentsdata[
                                                                widget.index]
                                                            .replies[index1]
                                                            .nooflikes
                                                            .toString()))
                                              ],
                                            )),
                                      )
                                    ]),
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                    itemCount: widget.commentsdata[widget.index].replies.length,
                    shrinkWrap: true,
                    physics: ScrollPhysics()),
              )
            ],
          ),
        ));
  }
}
