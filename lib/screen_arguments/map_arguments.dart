import 'package:latlong2/latlong.dart';

/// A class used for passing arguments to the full screen map screen
class MapArguments {
  final String adId;
  final LatLng adLocation;
  final double zoom;
  final LatLng currentCenter;

  MapArguments(
    this.adId,
    this.adLocation,
    this.zoom,
    this.currentCenter,
  );
}
