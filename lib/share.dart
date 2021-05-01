import 'package:flutter/material.dart';
import 'package:share/share.dart';

import 'models/content_model.dart';

class ShareScreen extends StatefulWidget {
  @override
  _ShareScreenState createState() => _ShareScreenState();
}

class _ShareScreenState extends State<ShareScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
  Padding(
  padding: const EdgeInsets.all(25.0),
  child: Text(
  'Share',
  style: const TextStyle(
  color: Colors.white
  ,
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  ),
  ),
  ),
  Container(
  height: 165.0,
  child: ListView.builder(
  padding: const EdgeInsets.symmetric(
  vertical: 12.0,
  horizontal: 8.0,
  ),
  scrollDirection: Axis.horizontal,
  //itemCount: contentList.length,
  itemBuilder: (BuildContext context, int index) {
  //final Content content = contentList[index];
  return GestureDetector(
  onTap: () {
  new MyButton();
  },
  child: Stack(
  alignment: Alignment.center,
  children: [
  Container(
  margin: const EdgeInsets.symmetric(horizontal: 16.0),
  height: 130.0,
  width: 130.0,
  decoration: BoxDecoration(
  // image: DecorationImage(
  // //image: AssetImage(content.imageUrl),
  // fit: BoxFit.cover,
  // ),
  shape: BoxShape.circle,
 // border: Border.all(color: content.color, width: 4.0),
  ),
  ),


  ],
  ),
  );
  },
  ),
  ),
  new MyButton(),

  ],

  );
  }
  }





  class MyButton extends StatelessWidget {
  const MyButton({
  Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return FlatButton(
  child: Text(
  'Share',
  style: TextStyle(
  color: Color.fromRGBO(245, 93, 62, 1.0)),
  ),
  color: Colors.grey[100],
  onPressed: () {
  final RenderBox box = context.findRenderObject();
  Share.share('Hi, check out this show !!',
  sharePositionOrigin:
  box.localToGlobal(Offset.zero) &
  box.size);
  },
  );
  }
  }



