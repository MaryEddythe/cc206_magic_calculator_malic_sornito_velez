// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

// ignore: must_be_immutable
class ArticleView extends StatefulWidget {
  String blogUrl;
  ArticleView({required this.blogUrl});

  @override
  State<ArticleView> createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF001747),
          elevation: 0.0,
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Padding(
            padding: EdgeInsets.only(right: 45.0),
            child: Center(
              child: Text(
                "Edithor.ial Web View",
                style: TextStyle(
                  fontFamily: 'Lora',
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        body: Container(
          child: WebView(
            initialUrl: widget.blogUrl,
            javascriptMode: JavascriptMode.unrestricted,
          ),
        ));
  }
}
