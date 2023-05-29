import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:fourhundred_app/components/image_view_widget.dart';
import 'package:get/get.dart';

import '../materials.dart';

class SmallImageWiget extends StatefulWidget {
  String url;
  SmallImageWiget({super.key, required this.url});

  @override
  State<SmallImageWiget> createState() => _SmallImageWigetState();
}

class _SmallImageWigetState extends State<SmallImageWiget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(ImageViewerWidget(url: widget.url));
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 3,
        height: MediaQuery.of(context).size.width / 3,
        margin: const EdgeInsets.all(1),
        padding: const EdgeInsets.all(1),
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: widget.url,
          progressIndicatorBuilder: (context, url, downloadProgress) => Center(
            child: CircularProgressIndicator(color: iconColor),
          ),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      ),
    );
  }
}
