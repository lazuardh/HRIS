import 'package:flutter/material.dart';

import 'component/login_content.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            width: 82,
            height: 16,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/Logo2.png",
                ),
              ),
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleSpacing: 0,
      ),
      // resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: size.height * 0.20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    "Welcome !",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  RichText(
                    text: const TextSpan(
                      text: ' ',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Log in',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: ' to continue',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Positioned(
                  child: Container(
                    height: size.height * 0.67,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(110),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: Container(
                    height: size.height * 0.62,
                    decoration: const BoxDecoration(
                      color: Color(0xffFFF6CB),
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(110)),
                    ),
                  ),
                ),
                Positioned(
                  child: Container(
                    height: size.height * 0.54,
                    decoration: const BoxDecoration(
                      color: Color(0xffFFE466),
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(110)),
                    ),
                  ),
                ),
                Positioned(
                  child: Container(
                    height: size.height * 0.47,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(110)),
                    ),
                  ),
                ),
                Positioned(
                  top: -10,
                  left: 55,
                  child: Center(
                    child: Image.asset(
                      "assets/images/girl.png",
                      scale: 1,
                    ),
                  ),
                ),
                const Positioned(
                  top: 100,
                  child: LoginContent(),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
