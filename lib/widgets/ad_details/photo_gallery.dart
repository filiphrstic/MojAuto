import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:dots_indicator/dots_indicator.dart';
import '../../data/graphql/schema.generated.graphql.dart';
import '../../utils/themes.dart';
import '../../utils/globals.dart';

/// Builds a vertically scrollable photo gallery
class PhotoGallery extends HookWidget {
  const PhotoGallery({Key? key, required this.photos}) : super(key: key);

  final List<AdWithAdAutoFragmentMixin$File> photos;

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState(0);

    return Center(
      child: SizedBox(
        height: 200,
        child: Column(
          children: [
            SizedBox(
              height: 170,
              child: PhotoViewGallery.builder(
                itemCount: photos.length,
                backgroundDecoration: const BoxDecoration(color: Colors.transparent),
                loadingBuilder: (context, event) => Center(
                  child: CircularProgressIndicator.adaptive(
                    backgroundColor: Theme.of(context).primaryColor,
                    value: event == null ? 0 : event.cumulativeBytesLoaded / event.expectedTotalBytes!,
                  ),
                ),
                builder: (context, index) {
                  final NetworkImage image = NetworkImage(imageSourceAddress + photos[index].path);
                  return PhotoViewGalleryPageOptions(
                    onTapUp: (_, __, ___) => Navigator.pushNamed(
                      context,
                      "/photo_view",
                      arguments: image,
                    ),
                    minScale: PhotoViewComputedScale.contained * 1.0,
                    maxScale: PhotoViewComputedScale.contained * 1.0,
                    imageProvider: image,
                  );
                },
                onPageChanged: (int index) => selectedIndex.value = index,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                height: 20,
                child: DotsIndicator(
                  dotsCount: photos.length,
                  position: selectedIndex.value.toDouble(),
                  decorator: const DotsDecorator(
                    activeColor: orangeThemeColor,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
