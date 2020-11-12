import 'package:flutter/foundation.dart';
import 'package:talkit/model/replydata.dart';

class Commentsdata {
  final String id;
  final String title;
  final DateTime date;
  int nooflikes=0;
  List<Replydata> replies;
  bool liked;
  Commentsdata
({
    @required this.id,
    @required this.title,
    @required this.date,
     @required this.nooflikes,
     @required this.replies,
     @required this.liked
  });
}