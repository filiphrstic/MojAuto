import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:i18next/i18next.dart';
import '../../screen_arguments/map_arguments.dart';
import '../../screen_arguments/ad_details_arguments.dart';

/// Builds a map widget to display ad location
class MapPreview extends HookWidget {
  final AdDetailsArguments adDetailsArguments;

  const MapPreview({Key? key, required this.adDetailsArguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final I18Next i18next = I18Next.of(context)!;
    final double coordsLatitude = adDetailsArguments.ad?.coordsLatitude ?? 45.328979; // Rijeka's latitude
    final double coordsLongitude = adDetailsArguments.ad?.coordsLongitude ?? 14.457664; // Rijeka's longitude
    final LatLng adLocation = LatLng(coordsLatitude, coordsLongitude);
    final ValueNotifier<double> currentZoom = useState(12.0);
    final MapController mapController = MapController();
    const minZoom = 10.0;
    const maxZoom = 18.0;

    //Todo: uncomment condition when we have ads with coords, for now when null its Rijeka by default
    //if (coordsLatitude == null || coordsLongitude == null) {
    //  return const SizedBox.shrink();
    //} else {

    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          // map
          FlutterMap(
            mapController: mapController,
            options: MapOptions(
              minZoom: minZoom,
              maxZoom: maxZoom,
              center: adLocation,
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
              padding: const EdgeInsets.only(top: 6, left: 6),
              child: Column(
                children: [
                  // zoom in floating button
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: FloatingActionButton(
                      heroTag: "floatingButtonZoomIn_MapPreview",
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
                  const SizedBox(height: 2),
                  // zoom out floating button
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: FloatingActionButton(
                      heroTag: "floatingButtonZoomOut_MapPreview",
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
              padding: const EdgeInsets.only(top: 6, right: 6),
              child: Column(
                children: [
                  // close full screen floating button
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: FloatingActionButton(
                      heroTag: "floatingButtonFullScreen_MapPreview",
                      shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(2),
                        ),
                      ),
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                      elevation: 0,
                      onPressed: () => {
                        Navigator.pushNamed(
                          context,
                          "/map_view",
                          arguments: MapArguments(adDetailsArguments.adId, adLocation, mapController.zoom, mapController.center),
                        ),
                      },
                      child: const Icon(
                        Icons.fullscreen,
                        size: 20,
                      ),
                    ),
                  ),
                  // spacing between floating buttons
                  const SizedBox(height: 4),
                  // restore ad location floating button
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: FloatingActionButton(
                      heroTag: "floatingButtonRestoreAdLocation_MapPreview",
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
                  heroTag: "floatingButtonInfo_MapPreview",
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                  elevation: 0,
                  onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(i18next.t("i18n:functionalityNotImplemented")),
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
      ),
    );
    //}
  }
}
