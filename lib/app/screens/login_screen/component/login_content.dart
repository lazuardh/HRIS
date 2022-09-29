import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/route/route_name.dart';

class LoginContent extends StatelessWidget {
  const LoginContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(top: 100),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 25, bottom: 10),
              child: const Text(
                "Email",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                width: size.width * 0.85,
                height: size.height * 0.06,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 49, 48, 48),
                    borderRadius: BorderRadius.circular(10),
                    shape: BoxShape.rectangle),
                child: const TextField(
                  style: TextStyle(color: Colors.grey),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: "type email",
                    hintStyle: TextStyle(
                        fontStyle: FontStyle.italic, color: Colors.grey),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25, bottom: 10),
              child: Text(
                "Password",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              width: size.width * 0.85,
              height: size.height * 0.06,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 49, 48, 48),
                  borderRadius: BorderRadius.circular(10),
                  shape: BoxShape.rectangle),
              child: const TextField(
                style: TextStyle(color: Colors.grey),
                decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  counterStyle: TextStyle(color: Colors.grey),
                  hintText: "type password",
                  hintStyle: TextStyle(
                      fontStyle: FontStyle.italic, color: Colors.grey),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(
                    context,
                    RouteName.navigation,
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  width: size.width * 0.85,
                  height: size.height * 0.06,
                  decoration: BoxDecoration(
                    color: const Color(0XFFFFE466),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Text(
                    "Log In",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(
                    context,
                    RouteName.homeAdminScreen,
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  width: size.width * 0.85,
                  height: size.height * 0.06,
                  decoration: BoxDecoration(
                    color: const Color(0XFFFFE466),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Text(
                    "admin",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
