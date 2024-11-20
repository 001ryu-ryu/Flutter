import 'package:flutter/material.dart';
import 'package:news_app/controller/fetch_news.dart';
import 'package:news_app/view/widgets/news_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    FetchNews.fetchNews();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
            controller: PageController(initialPage: 0),
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return NewsContainer(
                  imgUrl:
                      "https://images.unsplash.com/photo-1585621243952-f68eae991dd6?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  newsHeading: "5G in India",
                  newsDes:
                      "Prime Minister Narendra Modi, addressing the Indian diaspora at Nassau Coliseum in New York, praised India's technological advancements, particularly in 5G, and expressed hope for a made-in-India chip to be used in America soon.",
                  newsUrl:
                      "https://www.hindustantimes.com/india-news/indias-5g-market-bigger-than-us-pm-modi-to-indian-diaspora-in-new-york-101727027289336.html");
            }));
  }
}
