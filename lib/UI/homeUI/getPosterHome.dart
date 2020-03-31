import 'package:flutter/material.dart';

class getPosterHome extends StatelessWidget {
  final String poster;

  const getPosterHome({Key key, this.poster}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 10.0,
      top: 6.0,
      child: Container(
        height: 100.0,
        width: 100.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: NetworkImage(poster??"https://media.comicbook.com/files/img/default-movie.png"),fit: BoxFit.fill),
        ),
      ),
    );

    //Another way of doing
//    return CircleAvatar(
//      radius: 50.0,
//      backgroundImage: NetworkImage("$poster"),
//    );
  }
}