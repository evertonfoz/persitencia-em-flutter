import 'package:ec_delivery/shared/presentation/components/brand/brand_image.dart';
import 'package:flutter/material.dart';

class BoasVindasBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      child: Opacity(
        opacity: 0.1,
        child: BrandImageWidget(
          repeat: ImageRepeat.repeat,
          scale: 3,
        ),
      ),
    );
  }
}
