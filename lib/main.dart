import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_ui_design/material_design.dart';
import 'package:flutter_ui_design/cupertino_design.dart';

void main() => runApp(DesignApp());

class DesignApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DesignHomePage(title: 'Flutter UI design'),
    );
  }
}

class DesignHomePage extends StatefulWidget {
  DesignHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DesignHomePageState createState() => _DesignHomePageState();
}

class _DesignHomePageState extends State<DesignHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              child: Text('Material design'),
              onPressed: () {
                _navigateToMaterialGallery();
              },
            ),
            CupertinoButton(
              child: Text(
                'Cupertino design',
              ),
              onPressed: () {
                _navigateToCupertinoGallery();
              },
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToMaterialGallery() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MaterialGalleryRoute()),
    );
  }

  void _navigateToCupertinoGallery() {
    Navigator.push(
      context,
      CupertinoPageRoute(builder: (context) => CupertinoGalleryRoute()),
    );
  }
}
