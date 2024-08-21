import 'package:cached_network_image/cached_network_image.dart';
import 'package:europ_country/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AvatarFlagImageWidget extends StatelessWidget {
  final String flagUrl;
  const AvatarFlagImageWidget({super.key, required this.flagUrl});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: CachedNetworkImage(
          imageUrl: flagUrl,
          imageBuilder: (context, imageProvider) {
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: imageProvider, fit: BoxFit.cover),
              ),
            );
          },
          errorWidget: (context, url, error) =>
          const Icon(Icons.image_not_supported_outlined),
          placeholder: (context, url) => Shimmer.fromColors(
            baseColor: baseShimmerColor,
            highlightColor: highlightShimmerColor,
            enabled: true,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.white,
            ),
          ),
          fadeInCurve: Curves.easeIn,
          width: 40,
          height: 40,
          fit: BoxFit.cover,
        ));
  }
}
