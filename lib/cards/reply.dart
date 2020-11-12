import 'package:flutter/material.dart';
import 'package:talkit/model/commentsdata.dart';
import 'package:talkit/model/replydata.dart';

class Reply extends StatefulWidget {
  final List<Replydata> replydata;
  final List<Commentsdata> commentsdata;
  final int index;
  Reply(this.replydata, this.index, this.commentsdata);

  @override
  _ReplyState createState() => _ReplyState();
}

class _ReplyState extends State<Reply> {
  @override
  Widget build(BuildContext context) {
    final mqw = MediaQuery.of(context).size.width;
    return Column(
      children: [
        widget.commentsdata[widget.index].replies.length > 0
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Icon(
                      Icons.person_pin,
                      color: Colors.red,
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
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromRGBO(238, 238, 238, 1),
                                border: Border.symmetric()),
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '${widget.replydata[widget.replydata.length - 1].title}',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                          InkWell(
                            /* */
                            onTap: () => setState(() {
                              widget
                                      .commentsdata[widget.index]
                                      .replies[widget.replydata.length - 1]
                                      .liked
                                  ? widget
                                      .replydata[widget.replydata.length - 1]
                                      .nooflikes-- /*_replydatalist[index].liked=false */

                                  : widget
                                      .replydata[widget.replydata.length - 1]
                                      .nooflikes++;
                              widget
                                      .commentsdata[widget.index]
                                      .replies[widget.replydata.length - 1]
                                      .liked
                                  ? widget
                                      .replydata[widget.replydata.length - 1]
                                      .liked = false
                                  : widget
                                      .replydata[widget.replydata.length - 1]
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
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    border: Border.symmetric()),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: widget
                                                .replydata[widget
                                                        .commentsdata[
                                                            widget.index]
                                                        .replies
                                                        .length -
                                                    1]
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
                                              )),
                                    widget
                                                .replydata[widget
                                                        .commentsdata[
                                                            widget.index]
                                                        .replies
                                                        .length -
                                                    1]
                                                .nooflikes ==
                                            0
                                        ? Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Text("Like"))
                                        : Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Text(widget
                                                .replydata[widget
                                                        .commentsdata[
                                                            widget.index]
                                                        .replies
                                                        .length -
                                                    1]
                                                .nooflikes
                                                .toString()))
                                  ],
                                )),
                          )
                        ]),
                  ),
                ],
              )
            : Container(),
        widget.commentsdata[widget.index].replies.length > 1
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Icon(
                      Icons.person_pin,
                      color: Colors.red,
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
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromRGBO(238, 238, 238, 1),
                                border: Border.symmetric()),
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '${widget.commentsdata[widget.index].replies[widget.replydata.length - 1].title}',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => setState(() {
                              widget
                                      .commentsdata[widget.index]
                                      .replies[widget.replydata.length - 2]
                                      .liked
                                  ? widget
                                      .commentsdata[widget.index]
                                      .replies[widget.replydata.length - 2]
                                      .nooflikes-- /*_replydatalist[index].liked=false */

                                  : widget
                                      .commentsdata[widget.index]
                                      .replies[widget.replydata.length - 2]
                                      .nooflikes++;
                              widget
                                      .commentsdata[widget.index]
                                      .replies[widget.replydata.length - 2]
                                      .liked
                                  ? widget
                                      .commentsdata[widget.index]
                                      .replies[widget.replydata.length - 2]
                                      .liked = false
                                  : widget
                                      .commentsdata[widget.index]
                                      .replies[widget.replydata.length - 2]
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
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    border: Border.symmetric()),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: widget
                                                .commentsdata[widget.index]
                                                .replies[
                                                    widget.replydata.length - 2]
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
                                              )),
                                    widget
                                                .commentsdata[widget.index]
                                                .replies[
                                                    widget.replydata.length - 2]
                                                .nooflikes ==
                                            0
                                        ? Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Text("Like"))
                                        : Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Text(widget
                                                .commentsdata[widget.index]
                                                .replies[
                                                    widget.replydata.length - 2]
                                                .nooflikes
                                                .toString()))
                                  ],
                                )),
                          )
                        ]),
                  ),
                ],
              )
            : Container(),
        widget.commentsdata[widget.index].replies.length > 2
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Icon(
                      Icons.person_pin,
                      color: Colors.red,
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
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromRGBO(238, 238, 238, 1),
                                border: Border.symmetric()),
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '${widget.commentsdata[widget.index].replies[widget.replydata.length - 3].title}',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => setState(() {
                              widget
                                      .commentsdata[widget.index]
                                      .replies[widget.replydata.length - 3]
                                      .liked
                                  ? widget
                                      .commentsdata[widget.index]
                                      .replies[widget.replydata.length - 3]
                                      .nooflikes-- /*_replydatalist[index].liked=false */

                                  : widget
                                      .commentsdata[widget.index]
                                      .replies[widget.replydata.length - 3]
                                      .nooflikes++;
                              widget
                                      .commentsdata[widget.index]
                                      .replies[widget.replydata.length - 3]
                                      .liked
                                  ? widget
                                      .commentsdata[widget.index]
                                      .replies[widget.replydata.length - 3]
                                      .liked = false
                                  : widget
                                      .commentsdata[widget.index]
                                      .replies[widget.replydata.length - 3]
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
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    border: Border.symmetric()),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: widget
                                                .replydata[widget
                                                        .commentsdata[
                                                            widget.index]
                                                        .replies
                                                        .length -
                                                    3]
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
                                              )),
                                    widget
                                                .replydata[widget
                                                        .commentsdata[
                                                            widget.index]
                                                        .replies
                                                        .length -
                                                    3]
                                                .nooflikes ==
                                            0
                                        ? Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Text("Like"))
                                        : Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Text(widget
                                                .replydata[widget
                                                        .commentsdata[
                                                            widget.index]
                                                        .replies
                                                        .length -
                                                    3]
                                                .nooflikes
                                                .toString()))
                                  ],
                                )),
                          )
                        ]),
                  ),
                ],
              )
            : Container(),
      ],
    );
  }
}
