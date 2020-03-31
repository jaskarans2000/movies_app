import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moviesapp/Model/moviesdata.dart';
import 'package:moviesapp/UI/MovieDetailUI/movieDetail.dart';
import 'getPosterHome.dart';
import 'moviecardHome.dart';

class HomeCard extends StatelessWidget {
  final Movie movie;

  HomeCard({this.movie});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
          return MovieDetail(movie: movie,);
        }));
      },
      child: Stack(
        children: <Widget>[
         getMovieCard(movie: movie,),
          getPosterHome(poster: movie.poster,)
        ],
      ),
    ) ;
  }
}

