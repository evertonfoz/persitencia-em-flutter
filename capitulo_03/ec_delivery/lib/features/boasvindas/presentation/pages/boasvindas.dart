import 'package:ec_delivery/features/boasvindas/presentation/components/background.dart';
import 'package:ec_delivery/features/boasvindas/presentation/components/body_content.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class BoasVindasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ResponsiveVisibility(
              visible: false,
              visibleWhen: [
                Condition.largerThan(name: MOBILE),
              ],
              child: BoasVindasBackground(),
            ),
            BoasVindasContentBody(),
          ],
        ),
      ),
    );
  }
}
