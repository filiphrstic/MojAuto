import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart' show HookWidget;
import 'package:photo_view/photo_view.dart';

class PhotoViewScreen extends HookWidget {
  final NetworkImage image;

  const PhotoViewScreen({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return PhotoView(
      backgroundDecoration: const BoxDecoration(color: Colors.transparent),
      imageProvider: image,
      minScale: PhotoViewComputedScale.contained * 1.0,
      maxScale: PhotoViewComputedScale.contained * 4.0,
    );
  }
}
