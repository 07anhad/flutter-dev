import 'package:flutter/material.dart';
import 'package:fluttercatalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  MoveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });

      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 40.0,
                ),
                Image.asset(
                  "assets/images/undraw_welcome_cats_thqn.png",
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "How are you today $name?",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w300),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 28.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Enter First Name",
                            labelText: "first name"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "First name cannot be empty";
                          }

                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(
                              () {}); //stateful widget add dynamic changes to your screen
                        },
                        
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Enter Last Name",
                            labelText: "last name"),
                        //stateful widget add dynamic changes to your screen
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: "Enter password", labelText: "password"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password cannot be empty";
                          }

                          return null;
                        },
                        
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      InkWell(
                        onTap: () => MoveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          height: 50,
                          width: changeButton ? 50 : 130,
                          alignment: Alignment.center,
                          child: changeButton
                              ? const Icon(
                                  Icons.done,
                                  color: Colors.white,
                                  size: 20,
                                )
                              : const Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                          decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius:
                                  BorderRadius.circular(changeButton ? 40 : 8)),
                        ),
                      )
                      // ElevatedButton(
                      //   child: const Text("Login",
                      //       style: TextStyle(
                      //           fontSize: 18, fontWeight: FontWeight.w100)),
                      //   style: TextButton.styleFrom(
                      //       minimumSize: const Size(150, 40)),
                      //   onPressed: () {
                      //     // ignore: avoid_print
                      //     // print("helloo anhad");
                      //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                      //   },
                      // )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
