import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(MyApp());
var controller = WebViewController()
..setJavaScriptMode(JavaScriptMode.unrestricted)
..loadRequest(Uri.parse('https://flutter.dev'));
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Webテスト'),
        ),
        body: WebViewWidget(controller: controller),
        ),
      );
  }
  }