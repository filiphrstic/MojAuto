import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../screen_arguments/map_arguments.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:latlong2/latlong.dart';

class MapViewScreen extends HookWidget {
  final MapArguments mapArguments;

  const MapViewScreen({Key? key, required this.mapArguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    final LatLng adLocation = mapArguments.adLocation;
    final ValueNotifier<double> currentZoom = useState(mapArguments.zoom);
    final ValueNotifier<LatLng> currentCenter = useState(mapArguments.currentCenter);
    final MapController mapController = MapController();
    const minZoom = 4.0;
    const maxZoom = 18.0;

    //Todo: uncomment condition when we have ads with coords, for now when null its Rijeka by default
    //if (coordsLatitude == null || coordsLongitude == null) {
    //  return const SizedBox.shrink();
    //} else {

    return Stack(
      children: [
        // map
        FlutterMap(
          mapController: mapController,
          options: MapOptions(
            minZoom: minZoom,
            maxZoom: maxZoom,
            center: currentCenter.value,
            interactiveFlags: InteractiveFlag.pinchZoom | InteractiveFlag.drag | InteractiveFlag.doubleTapZoom,
            zoom: currentZoom.value,
            enableScrollWheel: false,
          ),
          children: [
            // map tiles
            TileLayer(
              urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
              subdomains: const ['a', 'b', 'c'],
            ),
            // ad location pin
            MarkerLayer(
              markers: [
                Marker(point: adLocation, builder: (context) => const Icon(Icons.location_pin)),
              ],
            ),
          ],
        ),
        // zoom in and out floating buttons' column
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 36, left: 6), // extra 30 because of no AppBar
            child: Column(
              children: [
                // zoom in floating button
                SizedBox(
                  height: 50,
                  width: 50,
                  child: FloatingActionButton(
                    heroTag: "floatingButtonZoomIn_MapView",
                    shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(2),
                      ),
                    ),
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    elevation: 0,
                    onPressed: () => {
                      currentZoom.value = currentZoom.value != maxZoom ? currentZoom.value + 1 : currentZoom.value,
                      mapController.move(mapController.center, currentZoom.value),
                    },
                    child: const Icon(
                      Icons.add,
                      size: 20,
                    ),
                  ),
                ),
                // spacing between zoom in and zoom out floating buttons
                const SizedBox(height: 4),
                // zoom out floating button
                SizedBox(
                  height: 50,
                  width: 50,
                  child: FloatingActionButton(
                    heroTag: "floatingButtonZoomOut_MapView",
                    shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(2),
                      ),
                    ),
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    elevation: 0,
                    onPressed: () => {
                      // maximum zoom value for OpenStreetMap is 18
                      currentZoom.value = currentZoom.value != minZoom ? currentZoom.value - 1 : currentZoom.value,
                      mapController.move(mapController.center, currentZoom.value),
                    },
                    child: const Icon(
                      Icons.remove,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        // close full screen and restore location floating buttons
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.only(top: 36, right: 6), // extra 30 because of no AppBar
            child: Column(
              children: [
                // close full screen floating button
                SizedBox(
                  height: 50,
                  width: 50,
                  child: FloatingActionButton(
                    heroTag: "floatingButtonCloseFullScreen_MapView",
                    shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(2),
                      ),
                    ),
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    elevation: 0,
                    onPressed: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.close_fullscreen,
                      size: 20,
                    ),
                  ),
                ),
                // spacing between floating buttons
                const SizedBox(height: 4),
                // restore ad location floating button
                SizedBox(
                  height: 50,
                  width: 50,
                  child: FloatingActionButton(
                    heroTag: "floatingButtonRestoreAdLocation_MapView",
                    shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(2),
                      ),
                    ),
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    elevation: 0,
                    onPressed: () => mapController.move(adLocation, currentZoom.value),
                    child: const Icon(
                      Icons.location_pin,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        // info floating button
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 6, right: 6),
            child: SizedBox(
              height: 30,
              width: 30,
              child: FloatingActionButton(
                heroTag: "floatingButtonInfo_MapView",
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
                elevation: 0,
                onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Map info not available yet!"),
                  ),
                ),
                child: const Icon(
                  Icons.info,
                  size: 20,
                ),
              ),
            ),
          ),
        ),
      ],
    );
    //}
  }
}
