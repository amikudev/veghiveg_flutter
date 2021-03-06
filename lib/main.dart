import 'package:flutter/material.dart';
import 'dart:io';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(WebViewExample());
}


class WebViewExample extends StatefulWidget {
  @override
  WebViewExampleState createState() => WebViewExampleState();
}

class WebViewExampleState extends State<WebViewExample> {
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Veg Hi Veg",
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Veg Hi Veg"),
            backgroundColor: Colors.deepPurple,
          ),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            child: WebView(
              initialUrl: 'https://flutter.dev',
              javascriptMode: JavascriptMode.unrestricted,
              // onPageFinished: ,
            ),
          ),
        ),
      ),
    );
  }
}
