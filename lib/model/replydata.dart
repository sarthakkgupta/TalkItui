import 'package:flutter/foundation.dart';

class Replydata {
 
  final String title;
  final DateTime date;
   int nooflikes=0;
 bool liked;
  Replydata
({
 
    @required this.title,
    @required this.date,
    @required this.nooflikes,
    @required this.liked
  });
}

