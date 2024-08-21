import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../theme/colors.dart';

class CountryListLoadingShimmer extends StatelessWidget {
  const CountryListLoadingShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: baseShimmerColor,
          highlightColor: highlightShimmerColor,
          enabled: true,
          child: const Card(
            margin: EdgeInsets.only(bottom: 10),
            child: ListTile(),
          ),
        );
      },
    );
  }
}
