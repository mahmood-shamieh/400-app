import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:photo_view/photo_view.dart';

class ImageViewerWidget extends StatelessWidget {
  String url;
  ImageViewerWidget({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PhotoView(
        imageProvider: NetworkImage(url),
      ),
    );
  }
}
