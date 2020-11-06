import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart'; 



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: new MyMapPage()
    );
  }
}

class MyMapPage extends StatefulWidget {

@override 
_MyMapPageState createState() => new _MyMapPageState();
}

class _MyMapPageState extends State<MyMapPage>{
@override 
Widget build(BuildContext context) {
  return new Scaffold (
   appBar:new AppBar(title:new Text('MapBox Map')),
   body : new FlutterMap(
    options: new MapOptions(
      center: new LatLng(37.780,-122.424),
      minZoom: 13.0,
    ),
    layers: [
      new TileLayerOptions(
        urlTemplate: "",
       // subdomains: ['a', 'b', 'c']
       additionalOptions: {
      'accessToken': '',
      'id': 'mapbox.mapbox-streets-v8',

       }
      ),
      new MarkerLayerOptions(
        markers: [
          new Marker(
            width: 80.0,
            height: 80.0,
            point: new LatLng(37.780,-122.424),
            builder: (context) =>
            new Container(
              //child: new FlutterLogo(),
              child: IconButton(
                icon:Icon( Icons.location_on_sharp ),
                color:Colors.redAccent,
                iconSize: 30,
                onPressed: () {print('icon pressed');},
                
                
                
                )
            ),
          ),
        ],
      ),
    ],
  )
  );
}






} 