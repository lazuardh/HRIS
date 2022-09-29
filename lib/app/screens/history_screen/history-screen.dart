// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/screens/history_screen/components/body_history.dart';
import 'package:flutter_application_1/app/utilities/colors.dart';
import 'package:flutter_application_1/app/utilities/text_styles.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: neutral800,
      appBar: AppBar(
        title: Text(
          "History",
          style: text2(neutral100, medium),
        ),
        centerTitle: true,
        backgroundColor: neutral800,
      ),
      body: const BodyHistory(),
    );
  }
}
