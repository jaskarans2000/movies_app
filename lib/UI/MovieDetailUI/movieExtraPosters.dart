import 'package:flutter/material.dart';

class MovieExtraPosters extends StatelessWidget {
  final List<String> posters;

  const MovieExtraPosters({Key key, this.posters}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left:16.0),
          child: Text("Movie Images".toUpperCase(),style: TextStyle(color: Colors.black,fontSize: 14.0),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 200.0,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,int index){
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width/3,
                      height: 160.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage("${posters[index]}"),fit: BoxFit.fill)
                      ),
                    ),
                  );
                },
                separatorBuilder: (context,int index)=>SizedBox(width: 15.0,),
                itemCount: posters.length),
          ),
        )
      ],
    );
  }
}