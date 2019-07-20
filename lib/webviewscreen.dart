import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatefulWidget {
  final url;
  final name;

  WebViewScreen(this.url, this.name);

  @override
  createState() => _WebViewScreenState(this.url,this.name);
}

class _WebViewScreenState extends State<WebViewScreen> {
  var _url;
  final _key = UniqueKey();
  var _name;

  _WebViewScreenState(this._url,this._name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(_name),),

        body: Column(
          children: [
            Expanded(
                child: WebView(
                    key: _key,
                    javascriptMode: JavascriptMode.unrestricted,
                    initialUrl: _url))
          ],
        ));
  }
}
