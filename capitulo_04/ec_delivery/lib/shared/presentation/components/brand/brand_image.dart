import 'package:flutter/material.dart';

class BrandImageWidget extends StatelessWidget {
  final double? width;
  final double? height;
  final ImageRepeat repeat;
  final BoxFit? fit;
  final double? scale;

  const BrandImageWidget({
    this.width,
    this.height,
    this.repeat: ImageRepeat.noRepeat,
    this.fit,
    this.scale,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/brand/320x253.png',
      width: width,
      height: height,
      fit: fit,
      repeat: repeat,
      scale: scale,
    );
  }
}
