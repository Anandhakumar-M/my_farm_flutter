import 'package:flutter/material.dart';
import 'package:my_dairy_farm_frontend/sign_up_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializeData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.data != null) {
            return const SignUpPage();
          } else {
            return const SignUpPage();
          }
        } else {
          return const Scaffold(
            backgroundColor: Color.fromARGB(255, 37, 169, 109),
            body: Column(
              children: [
                Align(
                  alignment: Alignment.center,
                ),
                SizedBox(
                  height: 300,
                ),
                CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('assets/images/logo.png'),
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "MY FARM",
                  style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 52,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal),
                )
              ],
            ),
          );
        }
      },
    );
  }

  Future<String?> _initializeData() async {
    await Future.delayed(const Duration(seconds: 5));
    SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.getString('username');
  }
}
