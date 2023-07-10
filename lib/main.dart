import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(MyApp());
final controller = WebViewController()
..setJavaScriptMode(JavaScriptMode.unrestricted)
..loadRequest(Uri.parse('https://my.ait.tokushima-u.ac.jp/portal/'));
class MyApp extends StatelessWidget {
  void _submit_ID(){
    controller..runJavaScript("document.getElementById('username').value= 'ABC123';"//;←必要
                             "document.getElementById('password').value=''");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("WEBテスト"),
        ),
        body: WebViewWidget(controller: controller),
        floatingActionButton: FloatingActionButton(
          onPressed: _submit_ID,
        ),
        ),
      );
    }
  }
