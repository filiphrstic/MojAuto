import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_downloader/image_downloader.dart';
import 'package:mime/mime.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:share_plus/share_plus.dart';
import 'formatters.dart';
import 'globals.dart';
import '../data/graphql/schema.generated.graphql.dart';

class ShareService {
  Future<void> onShare(AdWithAdAutoFragmentMixin ad, BuildContext context, bool includePhotos) async {
    //final String shareMessageSubject = ad.title;
    final String shareMessage =
        "Hey, check out this ad on MojAuto:\n${ad.title}, price: ${formatCurrencyEurocent.format(ad.priceEurocent)}\nSee more at:\n$productsUrl${ad.adId}";

    // sharePositionOrigin is required for iPads
    final box = context.findRenderObject() as RenderBox?;
    final MimeTypeResolver mimeTypeResolver = MimeTypeResolver();

    if (!includePhotos) {
      await Share.share(
        //subject: shareMessageSubject,
        shareMessage,
        sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size,
      );
    } else {
      final List<AdWithAdAutoFragmentMixin$File>? files = ad.files;
      if (files != null && files.isNotEmpty) {
        // sharing only the first photo
        final String filePath = imageSourceAddress + files.first.path;
        PermissionStatus status = await Permission.storage.status;
        if (status.isDenied) {
          await Permission.storage.request();
        }
        // to share the photo we need to download it to local storage (otherwise only photo url can be shared)
        final String? imageId = await ImageDownloader.downloadImage(filePath);
        if (imageId != null) {
          String? path = await ImageDownloader.findPath(imageId);
          if (path != null) {
            final String? mimeType = mimeTypeResolver.lookup(path);
            final XFile file = XFile(path, mimeType: mimeType);
            await Share.shareXFiles(
              [file],
              //subject: shareMessageSubject,
              text: shareMessage,
              sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size,
            );
            // deleting file from local storage after it is shared
            deleteFile(File(path));
            // if the path after saving the file to local storage doesnt exist - share plain text
          } else {
            await Share.share(
              //subject: shareMessageSubject,
              shareMessage,
              sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size,
            );
          }
          // if the was a problem downloading the file - share plain text
        } else {
          await Share.share(
            //subject: shareMessageSubject,
            shareMessage,
            sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size,
          );
        }
        // if there are no files associated with the ad - share plain text
      } else {
        await Share.share(
          //subject: shareMessageSubject,
          shareMessage,
          sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size,
        );
      }
    }
  }

  Future<void> deleteFile(File file) async {
    if (await file.exists()) {
      await file.delete();
    }
  }
}
