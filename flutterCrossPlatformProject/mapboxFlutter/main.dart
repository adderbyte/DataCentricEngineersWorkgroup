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
        urlTemplate: "https://api.mapbox.com/styles/v1/bellaris/ckh6c3k430ylk19ofo9qdqgp0/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiYmVsbGFyaXMiLCJhIjoiY2pzcnNrMXdoMHM5ajQ0cGhzenY1MGM4aCJ9.aEuD25iPBG9tuB_Rbadx6g",
       // subdomains: ['a', 'b', 'c']
       additionalOptions: {
      'accessToken': 'pk.eyJ1IjoiYmVsbGFyaXMiLCJhIjoiY2pzcnNrMXdoMHM5ajQ0cGhzenY1MGM4aCJ9.aEuD25iPBG9tuB_Rbadx6g',
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