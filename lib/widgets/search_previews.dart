import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:netflix_clone/models/models.dart';

class SearchPreviews extends StatelessWidget {
  final String title;
  final List<Content> contentList;

  const SearchPreviews({
    Key key,
    @required this.title,
    @required this.contentList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:<Widget> [




           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),





         Container(
           width: MediaQuery.of(context).size.width,
           height: MediaQuery.of(context).size.height,


          child: ListView.builder(
            padding: const EdgeInsets.symmetric(
              vertical: 12.0,
              horizontal: 8.0,
            ),

            scrollDirection: Axis.vertical,
            itemCount: contentList.length,
            itemBuilder: (BuildContext context, int index) {
              final Content content = contentList[index];
              return GestureDetector(
                onTap: () => print(content.name),
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [

                    // IconButton(
                    //  icon: new Icon(Icons.play_arrow,color: Colors.grey),
                    //   alignment: Alignment.centerRight,
                    //   padding: new EdgeInsets.all(100.0),
                    //   //Icon(Icons.play_arrow,color: Colors.grey),
                    // ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 16.0),
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(content.imageUrl),
                          fit: BoxFit.fitWidth,
                        ),
                        shape: BoxShape.rectangle,
                        border: Border.all(color: content.color, width: 0.0),
                      ),
                    ),
                    //Icon(Icons.play_arrow,color: Colors.grey),

                    Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Colors.black87,
                            Colors.black45,
                            Colors.transparent,
                          ],
                          stops: [0, 0.25, 1],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomLeft,
                        ),
                        shape: BoxShape.rectangle,
                        border: Border.all(color: content.color, width: 0.0),
                      ),
                    ),

                    Icon(Icons.play_arrow,color: Colors.grey),
                    Positioned(
                      left: 50,
                      right: 20,
                      top: 10,
                      child: SizedBox(
                        height: 20,
                        width:20,
                        child: Image.asset(content.titleImageUrl),
                      ),
                    ),

                  ],

                ),

              );

            },
          ),

        ),
        //Icon(Icons.play_arrow,color: Colors.grey),
        IconButton(
          icon: new Icon(Icons.play_arrow,color: Colors.grey),
          alignment: Alignment.bottomRight,
          padding: new EdgeInsets.all(100.0),
          onPressed: () {},
        )
      ],
    );
  }
}
