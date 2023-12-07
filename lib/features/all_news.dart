// ignore_for_file: annotate_overrides, prefer_interpolation_to_compose_strings, use_key_in_widget_constructors

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../models/article_model.dart';
import '../models/slider_model.dart';
import '../services/news.dart';
import '../services/slider_data.dart';
import 'article_view.dart';

// ignore: must_be_immutable
class AllNews extends StatefulWidget {
  String news;
  AllNews({required this.news});

  @override
  State<AllNews> createState() => _AllNewsState();
}

class _AllNewsState extends State<AllNews> {
  List<sliderModel> sliders = [];
  List<ArticleModel> articles = [];

  void initState() {
    getSlider();
    getNews();
    super.initState();
  }

  getNews() async {
    News newsclass = News();
    await newsclass.getNews();
    articles = newsclass.news;
    setState(() {});
  }

  getSlider() async {
    Sliders slider = Sliders();
    await slider.getSlider();
    sliders = slider.sliders;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.news + " News",
          style: const TextStyle(
              fontFamily: 'Lora',
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF001747),
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView.builder(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            itemCount:
                widget.news == "Breaking" ? sliders.length : articles.length,
            itemBuilder: (context, index) {
              return AllNewsSection(
                desc: widget.news == "Breaking"
                    ? sliders[index].description!
                    : articles[index].description!,
                image: widget.news == "Breaking"
                    ? sliders[index].urlToImage!
                    : articles[index].urlToImage!,
                title: widget.news == "Breaking"
                    ? sliders[index].title!
                    : articles[index].title!,
                url: widget.news == "Breaking"
                    ? sliders[index].url!
                    : articles[index].url!,
              );
            }),
      ),
    );
  }
}

// ignore: must_be_immutable
class AllNewsSection extends StatelessWidget {
  String image, desc, title, url;
  AllNewsSection(
      {required this.image,
      required this.desc,
      required this.title,
      required this.url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ArticleView(blogUrl: url)));
      },
      child: Container(
          child: Column(
        children: [
          const SizedBox(
            height: 5.0,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CachedNetworkImage(
                imageUrl: image,
                width: MediaQuery.of(context).size.width,
                height: 200,
                fit: BoxFit.cover),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Text(title,
              maxLines: 2,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold)),
          Text(desc,
              maxLines: 3,
              style: const TextStyle(color: Colors.black, fontSize: 14.0)),
          const SizedBox(
            height: 20.0,
          ),
        ],
      )),
    );
  }
}
