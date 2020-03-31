import 'package:flutter/material.dart';
import 'package:moviesapp/Model/moviesdata.dart';

class MovieDetailsCast extends StatelessWidget {
  final Movie movie;

  const MovieDetailsCast({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          MovieField(field:"Actor",value:movie.actors),
          MovieField(field: "Director",value: movie.director,)
        ],
      ),
    );
  }
}

class MovieField extends StatelessWidget {
  final String field;
  final String value;

  MovieField({this.field, this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("$field:",style: TextStyle(color: Colors.black38,
            fontSize: 12.0,
            fontWeight: FontWeight.w300),),
        Expanded(
          child: Text("$value",
            style: TextStyle(color: Colors.black,fontSize: 12.0,fontWeight: FontWeight.w300),),
        )
      ],
    );
  }
}