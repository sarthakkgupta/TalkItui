import 'package:flutter/material.dart';
import 'package:talkit/ThreadsPage.dart';
import 'package:talkit/cards/reply.dart';
import 'package:talkit/model/commentsdata.dart';


class Comments extends StatefulWidget {
  final List<Commentsdata> commentsdata;

  Comments(this.commentsdata);

  @override
  _CommentsState createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {

 /* final List<Replydata> widget.commentsdata = [
  . Replydata(
       
        title: 'fuckkk',
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
  ];*/

  @override
  Widget build(BuildContext context) {
    
    
    /* Widget likebutton(int nooflikes) {
      return InkWell(
        onTap: () =>
            null /*setState(() {
          nooflike = nooflikes + 1;
          print(nooflike);
        }),*/
        ,
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
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                    size: 16,
                  ),
                ),
                nooflikes == 0
                    ? Padding(
                        padding: const EdgeInsets.all(5.0), child: Text("Like"))
                    : Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(widget.commentsdata[index].nooflikes.toString()))
              ],
            )),
      );
    }
*/
    final mqw = MediaQuery.of(context).size.width;
    final mqh = MediaQuery.of(context).size.height;
    return Container(
      height: mqh -
          AppBar().preferredSize.height -
          mqw * 9 / 16 -
          MediaQuery.of(context).padding.top -
          55 -
          MediaQuery.of(context).padding.bottom,
      child: ListView.builder(
          itemBuilder: (ctx, index) {
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
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromRGBO(238, 238, 238, 1),
                                  border: Border.symmetric()),
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  widget.commentsdata[index].title,
                              
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
                                widget.commentsdata[index].liked
                                    ? widget.commentsdata[index].nooflikes-- /*widget.commentsdata[index].liked=false */

                                    : widget.commentsdata[index].nooflikes++;
                                      widget.commentsdata[index].liked
                                    ?  widget.commentsdata[index].liked=false 

                                    :  widget.commentsdata[index].liked=true;
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child:widget.commentsdata[index].liked?  Icon(
                                          Icons.favorite,
                                          color:  Colors.red,
                                          size: 16,
                                        ): Icon(
                                          Icons.favorite_border,
                                          color:  Colors.red,
                                          size: 16,
                                        ),
                                      ),
                                      widget.commentsdata[index].nooflikes == 0
                                          ? Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: Text("Like"))
                                          : Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: Text(widget.commentsdata[index].nooflikes
                                                  .toString()))
                                    ],
                                  )),
                            )
                          ]),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () =>  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ThreadsPage(widget.commentsdata,index,widget.commentsdata[index].replies)),
  ),
                  child: Text(
                    'View All replies',
                    style: new TextStyle(
                        color: Color.fromRGBO(205, 84, 77, 1), fontSize: 16),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Reply(widget.commentsdata[index].replies,index,widget.commentsdata))
              ],
            );
          },
          itemCount: widget.commentsdata.length,
          shrinkWrap: true,
          physics: ScrollPhysics()),
    );
  }
}
