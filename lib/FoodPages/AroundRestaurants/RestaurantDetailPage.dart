import 'dart:async';

import 'package:all_about_vw_village/FoodPages/AroundRestaurants/RestaurantGoogleMapPage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class RestaurantDetailPage extends StatefulWidget {
  const RestaurantDetailPage({Key? key}) : super(key: key);

  @override
  State<RestaurantDetailPage> createState() => _RestaurantDetailPageState();
}

class _RestaurantDetailPageState extends State<RestaurantDetailPage> {
  final Set<Marker> _markers = Set();

  static final CameraPosition _initialPosition =
      CameraPosition(target: LatLng(37.5240444, 127.0519132), zoom: 16);
  Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    _markers.add(
      Marker(
        markerId: MarkerId("1"),
        position: LatLng(37.5240444, 127.0519132),
        // infoWindow: InfoWindow(
        //   title: "명인등심",
        //   snippet: "한식 3.5",
        // ),
      ),
    );

    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        primary: false,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.network(
                    "http://www.seoulwire.com/news/photo/201904/121915_231628_4743.jpg",
                    width: size.width,
                  ),
                  Positioned(
                    left: 10,
                    bottom: 10,
                    child: Text(
                      "명인등심",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                "3.5",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "02-571-8753",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 50),
              SizedBox(
                height: 200,
                child: GestureDetector(
                  child: GoogleMap(
                    onTap: (LatLng latLng) {
                      // _markers.add(Marker(markerId: MarkerId('mark'), position: latLng));
                      // setState(() {});
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RestaurantGoogleMapPage()),
                      );
                    },
                    rotateGesturesEnabled: false,
                    scrollGesturesEnabled: false,
                    tiltGesturesEnabled: false,
                    zoomGesturesEnabled: false,
                    mapType: MapType.normal,
                    markers: _markers,
                    myLocationEnabled: true,
                    initialCameraPosition: _initialPosition,
                    onMapCreated: (GoogleMapController controller) {
                      _controller.complete(controller);
                    },
                    // gestureRecognizers: Set()
                    //   ..add(Factory<EagerGestureRecognizer>(
                    //       () => EagerGestureRecognizer())),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
