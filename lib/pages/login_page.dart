import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            Image.asset(
              "assets/images/login-image.png",
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "Welcome",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 28.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter username", labelText: "username"),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Enter password", labelText: "password"),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    child: const Text("Login"),
                    onPressed: () {
                      // ignore: avoid_print
                      print("helloo anhad");
                    },
                  )
                ],
              ),
            )
          ],
        ));
  }
}
