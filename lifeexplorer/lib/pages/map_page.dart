import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: PhotoView(
      imageProvider: const AssetImage("lib/images/evolution-map.png"),
    ));
  }
}
