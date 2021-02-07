import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/config.dart';

class CatalogPage extends StatefulWidget {
  CatalogPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<CatalogPage> {
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
            Text('Toogle app theme'),

            /// Toogle app theme
            IconButton(
              icon: Icon(Icons.brightness_4, size: 32.0, color: AppColors.purple),
              onPressed: () => currentTheme.toggleTheme(),
            ),
          ],
        ),
      ),
    );
  }
}
