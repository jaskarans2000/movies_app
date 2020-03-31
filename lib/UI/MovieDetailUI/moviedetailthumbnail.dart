import 'package:flutter/material.dart';

class MovieDetailThumbnail extends StatelessWidget {
  final String thumbnail;

  const MovieDetailThumbnail({Key key, this.thumbnail}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 180.0,
              decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(thumbnail),
                      fit: BoxFit.cover)
              ),
            ),
            Icon(Icons.play_circle_outline,color: Colors.white,size: 100.0,)
          ],
        ),
        Container(
          height: 80.0,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Color(0x00f5f5f5),Color(0xfff5f5f5)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)
          ),
        )
      ],
    );
  }
}