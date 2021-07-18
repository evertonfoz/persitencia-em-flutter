import 'package:ec_delivery/core/presentation/constants/responsiveness.dart';
import 'package:ec_delivery/features/boasvindas/presentation/components/bottom_row.dart';
import 'package:ec_delivery/features/boasvindas/presentation/components/welcome_text.dart';
import 'package:ec_delivery/shared/presentation/components/brand/brand_image.dart';
import 'package:ec_delivery/shared/presentation/components/brand/brand_title.dart';
import 'package:flutter/material.dart';

class BoasVindasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              child: Opacity(
                opacity: 0.1,
                child: Image.asset(
                  'assets/images/brand/160x127.png',
                  repeat: ImageRepeat.repeat,
                ),
              ),
            ),
            Center(
              child: ConstrainedBox(
                constraints: BoxConstraints.tightFor(
                  width: kDesktopBreakpoint,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BrandTitleWidget(),
                    BrandImageWidget(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.5,
                    ),
                    WelcomeTextWidget(),
                    BottomRowBoasVindasWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
