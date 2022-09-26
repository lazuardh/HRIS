import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/screens/Profil/components/profil_screen.dart';

import '../../utilities/colors.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: neutral800,
        elevation: 0,
        title: const Text(
          "Profil",
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: const ProfilScreen(),
    );
  }
}
