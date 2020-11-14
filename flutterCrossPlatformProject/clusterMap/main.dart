import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart'; 
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';
///import 'package:map_controller/map_controller.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MyMapPage()
    );
  }
}

class MyMapPage extends StatefulWidget {

@override 
_MyMapPageState createState() => new _MyMapPageState();
}

class _MyMapPageState extends State<MyMapPage>{
final PopupController _popupController = PopupController();
 final MapController controller = new MapController();



  List<Marker> markers;
  int pointIndex;
  List points = [
    LatLng(51.5, -0.09),
    LatLng(49.8566, 3.3522),
  ];
@override
  void initState() {
    pointIndex = 0;
    markers = [
      Marker(
        anchorPos: AnchorPos.align(AnchorAlign.center),
        height: 30,
        width: 30,
        point: points[pointIndex],
        builder: (ctx) => Icon(Icons.pin_drop,color:Colors.redAccent),
      ),
      Marker(
        anchorPos: AnchorPos.align(AnchorAlign.center),
        height: 80,
        width: 80,
        point: LatLng(53.3498, -6.2603),
        builder: (ctx) => new Container(
              //child: new FlutterLogo(),
              child: IconButton(
                icon:Icon( Icons.location_on_sharp,color:Colors.black87,),
                //color:Colors.redAccent,
                iconSize: 80,
                onPressed: null,
              
                
                
                
                ),
      ),
      ),
      Marker(
        anchorPos: AnchorPos.align(AnchorAlign.center),
        height: 80,
        width: 80,
        point: LatLng(53.3488, -6.2613),
        builder: (ctx) => new Container(
              //child: new FlutterLogo(),
              child: IconButton(
                icon:Icon( Icons.location_on_sharp,color:Colors.black87, ),
                //color:Colors.redAccent,
                iconSize: 80,
                onPressed: null,
              
                
                
                
                ),
      ),
      ),
      Marker(
        anchorPos: AnchorPos.align(AnchorAlign.center),
        height: 80,
        width: 80,
        point: LatLng(53.3488, -6.2613),
        builder: (ctx) => new Container(
              //child: new FlutterLogo(),
              child: IconButton(
                icon:Icon( Icons.location_on_sharp,color:Colors.black87 ),
                //color:Colors.redAccent,
                iconSize: 80,
                onPressed: null,
              
                
                
                
                ),
      ),
      ),
      Marker(
        anchorPos: AnchorPos.align(AnchorAlign.center),
        height: 80,
        width: 80,
        point: LatLng(48.8566, 2.3522),
        builder: (ctx) => new Container(
              //child: new FlutterLogo(),
              child: IconButton(
                icon:Icon( Icons.location_on_sharp,color:Colors.black87, ),
                //color:Colors.redAccent,
                iconSize: 80,
                onPressed: null,
              
                
                
                
                ),
      ),
      ),
      Marker(
        anchorPos: AnchorPos.align(AnchorAlign.center),
        height: 80,
        width: 80,
        point: LatLng(49.8566, 3.3522),
        builder: (ctx) => new Container(
              //child: new FlutterLogo(),
              child: IconButton(
                icon:Icon( Icons.location_on_sharp,color:Colors.black87, ),
               // color:Colors.redAccent,
                iconSize: 80,
                onPressed: null,
              
                
                
                
                ),
      ),
      )
    ];

    super.initState();
  }

// void _zoom(){
// controller.move(controller.center, controller.zoom + 1); // zoom in
// controller.move(controller.center, controller.zoom - 1); // zoom out

// }
@override 
Widget build(BuildContext context) {
  return  Scaffold (
   //appBar: AppBar(title: Text('MapBox Map')),
   //just added for cluster map
   resizeToAvoidBottomPadding: false, //prevent overlapping buttons
   // using stack to prevent widgets from overlapping each other ...
   floatingActionButton: Stack(
  children: <Widget>[
    Align(
      alignment: Alignment.bottomRight,
      child: 
       FloatingActionButton(
        child: Icon(Icons.add_circle_outline_sharp,color:Colors.white),
        //heroTag: null,
        backgroundColor: Colors.blueGrey,
        onPressed: 
        () {
          pointIndex++;
          if (pointIndex >= points.length) {
            pointIndex = 0;
          controller.move(controller.center, controller.zoom + 1); // zoom in
          }
          
          
          
          //controller.move(controller.center, controller.zoom - 1); // zoom out
       
          setState(() {
            markers[0] = Marker(
              point: points[pointIndex],
              anchorPos: AnchorPos.align(AnchorAlign.center),
              height: 80,
              width: 80,
              builder: (ctx) => Icon(Icons.location_on_sharp),
            );

            // one of this
            //markers = List.from(markers);
            // markers = [...markers];
            //markers = []..addAll(markers);
          });
        },
      ),
    ),
    Align(
      alignment:Alignment(1.0,0.80),
      child: 
       FloatingActionButton(
        child: Icon(Icons.remove_circle_outline_sharp,color:Colors.white),
        //heroTag: null,
        backgroundColor: Colors.blueGrey,
        onPressed: 
        () {
          pointIndex++;
          if (pointIndex >= points.length) {
            pointIndex = 0;
          controller.move(controller.center, controller.zoom - 1); // zoom in
          }
          
          
          
          //controller.move(controller.center, controller.zoom - 1); // zoom out
       
          setState(() {
            markers[0] = Marker(
              point: points[pointIndex],
              anchorPos: AnchorPos.align(AnchorAlign.center),
              height: 80,
              width: 80,
              builder: (ctx) => Icon(Icons.location_on_sharp),
            );

            // one of this
            //markers = List.from(markers);
            // markers = [...markers];
            //markers = []..addAll(markers);
          });
        },
      ),
     ),
  ],
),
  //  FloatingActionButton(
  //       child: Icon(Icons.add_circle_outline_sharp),
  //       onPressed: 
  //       () {
  //         pointIndex++;
  //         if (pointIndex >= points.length) {
  //           pointIndex = 0;
  //         controller.move(controller.center, controller.zoom + 1); // zoom in
  //         }
          
          
          
  //         //controller.move(controller.center, controller.zoom - 1); // zoom out
       
  //         setState(() {
  //           markers[0] = Marker(
  //             point: points[pointIndex],
  //             anchorPos: AnchorPos.align(AnchorAlign.center),
  //             height: 80,
  //             width: 80,
  //             builder: (ctx) => Icon(Icons.location_on_sharp),
  //           );

  //           // one of this
  //           //markers = List.from(markers);
  //           // markers = [...markers];
  //           //markers = []..addAll(markers);
  //         });
  //       },
  //     ),
      
   
   body :  FlutterMap(
    mapController: controller,
    
    options:  MapOptions(
      center: points[0],//new LatLng(37.780,-122.424),
      zoom: 5,
      minZoom: 7,
      plugins: [MarkerClusterPlugin(),],
      onTap: (_) => _popupController
              .hidePopup(), // Hide popup when map tapped
    ),
    layers: [
      TileLayerOptions(
        urlTemplate: "https://api.mapbox.com/styles/v1/bellaris/ckh6c3k430ylk19ofo9qdqgp0/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiYmVsbGFyaXMiLCJhIjoiY2pzcnNrMXdoMHM5ajQ0cGhzenY1MGM4aCJ9.aEuD25iPBG9tuB_Rbadx6g",
       // subdomains: ['a', 'b', 'c']
       additionalOptions: {
      'accessToken': 'pk.eyJ1IjoiYmVsbGFyaXMiLCJhIjoiY2pzcnNrMXdoMHM5ajQ0cGhzenY1MGM4aCJ9.aEuD25iPBG9tuB_Rbadx6g',
      'id': 'mapbox.mapbox-streets-v8',

       }
      ),
      MarkerClusterLayerOptions(
        maxClusterRadius: 100,
        zoomToBoundsOnClick: true,
        //spiderfySpiralDistanceMultiplier: 2,
        disableClusteringAtZoom: 15,
        size: Size(40, 40),
        anchor: AnchorPos.align(AnchorAlign.center),
        fitBoundsOptions: FitBoundsOptions(padding: EdgeInsets.all(50),
            ),
        markers: markers,
        polygonOptions: PolygonOptions(
                borderColor: Colors.blueAccent,
                color: Colors.black12,
                borderStrokeWidth: 3),
        popupOptions: PopupOptions(
            popupSnap: PopupSnap.top,
            popupController: _popupController,
            popupBuilder: (_, marker) => Container(
                  width: 200,
                  height: 100,
                  color: Colors.white,
                  child: GestureDetector(
                    onTap: () => debugPrint("Popup tap!"),
                    child: Text(
                      "Container popup for marker at ${marker.point}",
                    ),
                  ),
                )),
        builder: (context, markers) {
              return FloatingActionButton(
                child: Text(markers.length.toString()),
                onPressed: null
              );
            },
        
         // [
        //   new Marker(
        //     width: 80.0,
        //     height: 80.0,
        //     point: new LatLng(37.780,-122.424),
        //     builder: (context) =>
        //     new Container(
        //       //child: new FlutterLogo(),
        //       child: IconButton(
        //         icon:Icon( Icons.location_on_sharp ),
        //         color:Colors.redAccent,
        //         iconSize: 30,
        //         onPressed: () {print('icon pressed');},
                
                
                
        //         )
        //     ),
        //   ),
         
        // ],
      ),
    ],
  )
  );
   }

} 