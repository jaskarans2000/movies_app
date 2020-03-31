import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moviesapp/Model/moviesdata.dart';
import 'movieDetailsCast.dart';
import 'movieDetailwithHeader.dart';
import 'movieExtraPosters.dart';
import 'moviedetailthumbnail.dart';

class MovieDetail extends StatelessWidget {
  final Movie movie;

  const MovieDetail({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey.shade900,
      ),
      body: ListView(
        children: <Widget>[
          MovieDetailThumbnail(thumbnail: movie.poster,),
          MovieDetailHeaderWithPoster(movie: movie,),
          HorizontalLine(),
          MovieDetailsCast(movie:movie),
          HorizontalLine(),
          MovieExtraPosters(posters: movie.images),
        ],
      ),
    );
  }
}



class HorizontalLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:8.0,vertical: 12.0),
      child: Container(
        height: 0.5,
        color: Colors.grey,
      ),
    );
  }
}



