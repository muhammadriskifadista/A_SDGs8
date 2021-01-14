import 'package:flutter/material.dart';
import 'dart:math' as mathdart;
import 'package:mapbox_gl/mapbox_gl.dart' as mb;
import 'package:geolocator/geolocator.dart' as geo;

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  var token =
      'pk.eyJ1IjoiZGlzdGEiLCJhIjoiY2tqdmM2cHl2MDdobDJ2cXJ2aWNoMGdtZSJ9.S08h_n8YR4ePX4f-Z8OcOw';

  mb.MapboxMapController mapController;
  mb.LatLng gpsLoc;
  mb.Circle curPosCircle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: Text('Lokasi Perusahaan')),
      body: Center(
        child: Column(
          children: [
            map(),
          ],
        ),
      ),
    );
  }

  Widget map() {
    return Container(
      height: 300,
      child: mb.MapboxMap(
        accessToken: token,
        styleString: 'mapbox://styles/mapbox/navigation-preview-night-v4',
        initialCameraPosition: mb.CameraPosition(
          target: mb.LatLng(-8.203118, 113.333174),
          zoom: 8,
        ),
        onMapCreated: mapCreated,
        onMapClick: mapClicked,
      ),
    );
  }

  void mapClicked(mathdart.Point<double> point, mb.LatLng latLng) {
    if (mapController != null) {
      mapController.addCircle(
        mb.CircleOptions(
          circleRadius: 8,
          circleColor: 'green',
          circleOpacity: 1,
          geometry: latLng,
          draggable: false,
        ),
      );
    }
  }

  void mapCreated(mb.MapboxMapController controller) {
    mapController = controller;
    print('map created');

    var lokasi = mb.LatLng(-8.203118, 113.333174);

    mapController.addCircle(
      mb.CircleOptions(
        circleRadius: 5,
        circleColor: 'blue',
        circleOpacity: 1,
        geometry: lokasi,
        draggable: false,
      ),
    );
  }

  void checPermissionGps() {
    print('CHECK LOKASI');
    geo.Geolocator.isLocationServiceEnabled().then((bool isEnabled) {
      print("Location enabled?: $isEnabled");
    });
  }

  void getCurrentLoc() {
    geo.Geolocator.getCurrentPosition().then((geo.Position pos) {
      if (mapController != null) {
        gpsLoc = mb.LatLng(pos.latitude, pos.longitude);
        var newCamLoc = mb.CameraUpdate.newLatLng(gpsLoc);
        mapController.animateCamera(newCamLoc);

        mapController.addCircle(mb.CircleOptions(
          geometry: gpsLoc,
          circleColor: 'yellow',
          circleStrokeColor: 'black',
          circleStrokeWidth: 1,
          circleRadius: 10,
          draggable: false,
        ));
      }
    });
  }
}
