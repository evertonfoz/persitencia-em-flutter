import 'package:ec_delivery/core/presentation/constants/responsiveness.dart';
import 'package:ec_delivery/core/presentation/theme.dart';
import 'package:ec_delivery/features/boasvindas/data/datasources/boasvindas_datasource.dart';
import 'package:ec_delivery/features/boasvindas/presentation/pages/boasvindas.dart';
import 'package:ec_delivery/features/produtos/presentation/pages/crud.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );

  runApp(ECDeliveryApp());
}

class ECDeliveryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EC Delivery',
      theme: theme(),
      builder: (context, widget) => ResponsiveWrapper.builder(
        widget,
        minWidth: 410,
        defaultScale: true,
        breakpoints: [
          ResponsiveBreakpoint.resize(410, name: MOBILE),
          ResponsiveBreakpoint.autoScale(560, name: TABLET),
          ResponsiveBreakpoint.resize(kDesktopBreakpoint, name: DESKTOP),
        ],
        backgroundColor: Colors.indigo.shade600,
      ),
      home: FutureBuilder(
        future: _buildHome(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return snapshot.data;
          }

          return Container();
        },
      ),
    );
  }

  Future<Widget> _buildHome() async {
    if (await BoasVindasDataSource.getDontShowAgain()) {
      return ProdutosCRUDPage();
    }

    return BoasVindasPage();
  }
}
