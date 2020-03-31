import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moviesapp/Model/moviesdata.dart';

import 'homeCard.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Movie> movies = Movie.getMovies();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey.shade900,
      ),
      backgroundColor: Colors.blueGrey.shade900,
      body: ListView.builder(
        //separatorBuilder: (context,index)=>SizedBox(height: 12.0,),
          itemCount: movies.length,
          itemBuilder: (BuildContext context,int index){
        return HomeCard(movie: movies[index]);
      }) 
    );
  }
}


