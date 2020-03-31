import 'package:flutter/material.dart';
import 'package:moviesapp/Model/moviesdata.dart';

class MovieDetailHeader extends StatelessWidget {
  final Movie movie;

  const MovieDetailHeader({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("${movie.year} . ${movie.genre}".toUpperCase(),style: TextStyle(color: Colors.cyan,fontWeight: FontWeight.w400),),
        Text("${movie.title}",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 32.0),),
        Text.rich(TextSpan(style: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.w300,
        ),
            children: <TextSpan>[
              TextSpan(
                  text: movie.plot
              ),
              TextSpan(text: "More...",style: TextStyle(color: Colors.indigoAccent))
            ]))
      ],
    );
  }
}