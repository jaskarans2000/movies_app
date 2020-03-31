import 'package:flutter/material.dart';
import 'package:moviesapp/Model/moviesdata.dart';
import 'movieDetailHeader.dart';
import 'moviePoster.dart';

class MovieDetailHeaderWithPoster extends StatelessWidget {
  final Movie movie;

  const MovieDetailHeaderWithPoster({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:16.0),
      child: Row(
        children: <Widget>[
          MoviePoster(poster:movie.poster),
          SizedBox(width: 10.0,),
          Expanded(
              child: MovieDetailHeader(movie:movie))
        ],
      ),
    );
  }
}