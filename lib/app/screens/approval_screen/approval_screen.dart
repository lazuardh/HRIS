import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/screens/approval_screen/components/body_approval.dart';
import 'package:flutter_application_1/app/utilities/colors.dart';
import 'package:flutter_application_1/app/utilities/text_styles.dart';

class ApprovalScreen extends StatelessWidget {
  const ApprovalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: neutral100,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: neutral800,
          size: 25,
        ),
        title: Text(
          "Presensi Pegawai",
          style: text2(neutral800, semibold),
        ),
        centerTitle: true,
      ),
      body: const BodyApproval(),
    );
  }
}
