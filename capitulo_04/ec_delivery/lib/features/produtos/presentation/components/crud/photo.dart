import 'package:ec_delivery/core/presentation/constants/urls.dart';
import 'package:flutter/material.dart';

class PhotoProdutoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 300,
        height: MediaQuery.of(context).size.height * .37,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(color: Colors.black, width: 5),
                image: DecorationImage(
                  image: AssetImage(kSemFotoURL),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Icon(
                Icons.photo_camera,
                size: 48,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
