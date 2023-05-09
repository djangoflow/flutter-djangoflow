import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'avatar.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    Key? key,
    this.enablePicker = false,
    this.isLarge = false,
    this.imageLink,
    this.placeHolder,
    this.customRadius,
  }) : super(key: key);

  final String? imageLink;
  final Widget? placeHolder;
  final double? customRadius;
  final bool enablePicker;
  final bool isLarge;

  @override
  Widget build(BuildContext context) {
    final isImageEmpty = imageLink?.isEmpty;

    return Avatar(
      imageProvider: imageLink == null || (isImageEmpty != null && isImageEmpty)
          ? null
          : CachedNetworkImageProvider(
              imageLink!,
            ),
      isLarge: isLarge,
      placeHolder: placeHolder,
      customRadius: customRadius,
    );
  }
}
