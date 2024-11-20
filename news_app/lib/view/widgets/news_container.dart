import 'package:flutter/material.dart';

class NewsContainer extends StatelessWidget {
  String imgUrl;
  String newsHeading;
  String newsDes;
  String newsUrl;

  NewsContainer ({
    required this.imgUrl,
    required this.newsHeading,
    required this.newsDes,
    required this.newsUrl,
});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery
          .of(context)
          .size
          .height,
      width: MediaQuery
          .of(context)
          .size
          .width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            height: 400,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
              imgUrl),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8,),
                Text(newsHeading, style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
                SizedBox(height: 8,),
                Text(newsDes),
              ],
            ),
          ),

          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,

              children: [
                ElevatedButton(onPressed: () {}, child: Text("Read more", style: TextStyle(color: Colors.white),), style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),),
              ],
            ),
          ),
          SizedBox(height: 15)
        ],
      ),
    );
  }
}