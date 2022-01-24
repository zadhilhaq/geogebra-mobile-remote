import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Georefleksi extends StatelessWidget {
  const Georefleksi({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Refleksi Geometri',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.close),
          ),
          title: Text('Refleksi Geometri'),
        ),
        body: Container(
          margin: EdgeInsets.all(3.0),
          alignment: Alignment.center,
          child: Column(
            children: [Expanded(child: ShowGeogebra()), buildContainer()],
          ),
        ),
      ),
    );
  }
}

Widget buildContainer() => Container(
      child: Text('https://www.geogebra.org/'),
      height: 20.0,
      margin: EdgeInsets.all(1),
      alignment: Alignment.center,
    );

class ShowGeogebra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: 'https://www.geogebra.org/m/ndsnnnre',
      withZoom: true,
    );
  }
}
