import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/screens/Profil/widgets/build_avatar.dart';
import 'package:flutter_application_1/app/screens/Profil/widgets/build_scroll.dart';
import 'package:flutter_application_1/app/utilities/colors.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              padding: const EdgeInsets.only(
                top: 20,
                bottom: 10,
              ),
              color: neutral800,
              height: size.height,
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  BuildCircleAvatar(),
                ],
              ),
            ),
          ),
          const BuildScrollContent()
        ],
      ),
    );
  }
}
