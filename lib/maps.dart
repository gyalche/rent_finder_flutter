import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Map extends StatefulWidget {
  const Map({Key? key}) : super(key: key);

  @override
  State<Map> createState() => _MapState();
}

class _MapState extends State<Map> {
  @override
  Widget build(BuildContext context) {
    return Container(
      import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final mapOptions = new MapOptions()
    ..zoom = 8
    ..center = new LatLng(-34.397, 150.644)
    ..mapTypeId = MapTypeId.ROADMAP
    ;
  final map = new GMap(query("#map_canvas"), mapOptions);
}
    );
  }
}