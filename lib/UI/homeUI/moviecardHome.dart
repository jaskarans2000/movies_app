import 'package:flutter/material.dart';
import 'package:moviesapp/Model/moviesdata.dart';

class getMovieCard extends StatelessWidget {
  final Movie movie;

  const getMovieCard({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 60.0),
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: 120,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.5)
        ),
        child: Card(
          color: Colors.black45,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 54.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(child: Text(movie.title, style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold),)),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Text("Rating: ${movie.imdbRating}/10",
                        style: MainTextstyle(),),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Flexible(child: Text("Released: ${movie.releasedDate}",
                      style: MainTextstyle(),)),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Text(movie.runtime, style: MainTextstyle(),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Text(movie.rated, style: MainTextstyle(),),
                    )
                  ],
                )
              ],
            ),
          ),
        )
    );
  }
}

TextStyle MainTextstyle(){
  return TextStyle(
      color: Colors.grey,
      fontSize: 15.0
  );
}