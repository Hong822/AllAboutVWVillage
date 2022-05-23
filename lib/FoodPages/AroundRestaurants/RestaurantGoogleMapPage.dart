import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class RestaurantGoogleMapPage extends StatefulWidget {
  const RestaurantGoogleMapPage({Key? key}) : super(key: key);

  @override
  State<RestaurantGoogleMapPage> createState() => _RestaurantGoogleMapPageState();
}

class _RestaurantGoogleMapPageState extends State<RestaurantGoogleMapPage> {
  Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _initialPosition =
      CameraPosition(target: LatLng(37.5229582, 127.0548522), zoom: 16);

  MapType _defaultMapType = MapType.normal;
  final double _zoom = 16;

  final Set<Marker> _markers = Set();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Google Map Test'),
        centerTitle: true,
      ),
      drawer: _drawer(),
      body: Stack(
        children: <Widget>[
          GoogleMap(
            // rotateGesturesEnabled: false,
            // scrollGesturesEnabled: false,
            // tiltGesturesEnabled: false,
            // zoomGesturesEnabled: false,
            mapType: _defaultMapType,
            markers: _markers,
            myLocationEnabled: true,
            initialCameraPosition: _initialPosition,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
          Container(
            margin: EdgeInsets.only(top: 80, right: 10),
            alignment: Alignment.topRight,
            child: Column(
              children: <Widget>[
                FloatingActionButton(
                  child: Icon(Icons.layers),
                  elevation: 5,
                  backgroundColor: Colors.teal[200],
                  onPressed: () {
                    _changeMapType();
                    print('Changing the Map Type');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _changeMapType() {
    setState(() {
      _defaultMapType = _defaultMapType == MapType.normal
          ? MapType.satellite
          : MapType.normal;
    });
  }

  Widget _drawer() {
    return Drawer(
      elevation: 16.0,
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("xyz"),
            accountEmail: Text("xyz@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text("xyz"),
            ),
            otherAccountsPictures: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("abc"),
              )
            ],
          ),
          ListTile(
            title: new Text("Places"),
            leading: new Icon(Icons.flight),
          ),
          Divider(),
          ListTile(
            onTap: () {
              _goToNewYork();
              Navigator.of(context).pop();
            },
            title: new Text("New York"),
            trailing: new Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            onTap: () {
              _goToLonLat(
                37.5240691,
                127.0504136,
                "공리",
                "중화요리",
                19,
              );
              Navigator.of(context).pop();
            },
            title: new Text("공리"),
            trailing: new Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }

  Future<void> _goToLonLat(double _lat, double _lon, String _markerID,
      String _snippet, double zoom) async {
    double lat = _lat;
    double long = _lon;
    GoogleMapController controller = await _controller.future;
    controller
        .animateCamera(CameraUpdate.newLatLngZoom(LatLng(lat, long), zoom));
    setState(
      () {
        _markers.add(
          Marker(
            markerId: MarkerId(_markerID),
            position: LatLng(lat, long),
            infoWindow: InfoWindow(
              title: _markerID,
              snippet: _snippet,
            ),
          ),
        );
      },
    );
  }

  Future<void> _goToNewYork() async {
    double lat = 40.7128;
    double long = -74.0060;
    GoogleMapController controller = await _controller.future;
    controller
        .animateCamera(CameraUpdate.newLatLngZoom(LatLng(lat, long), _zoom));
    setState(
      () {
        _markers.add(
          Marker(
            markerId: MarkerId('newyork'),
            position: LatLng(lat, long),
            infoWindow:
                InfoWindow(title: 'New York', snippet: 'Welcome to New York'),
          ),
        );
      },
    );
  }
}
