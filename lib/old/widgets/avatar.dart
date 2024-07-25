import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    super.key,
    required this.url,
    required this.radius,
  });
const Avatar.small({
    super.key,
  required this.url,
}) : radius = 20;

  const Avatar.medium({
    super.key,
    required this.url,
  }) : radius = 30;

  const Avatar.large({
    super.key,
    required this.url,
  }) : radius = 44;

  final double radius;
  final String url;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: CachedNetworkImageProvider(url),
    );
  }
}
