import 'package:authenticaton/components/Square_tile.dart';
import 'package:authenticaton/components/mybotton.dart';
import 'package:authenticaton/components/mytextfield.dart';
import 'package:flutter/material.dart';

class login_page extends StatelessWidget {
  login_page({Key? key}) : super(key: key);

  //text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              //logo
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(
                height: 50,
              ),
              //welcome back
              Text("Welcome back you\'ve been missed!",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                  )),
              const SizedBox(
                height: 25,
              ),

              // username text field
              mytextfield(
                hintText: "Username",
                controller: usernameController,
                obscureText: false,
              ),
              const SizedBox(
                height: 10,
              ),
              // password text field

              mytextfield(
                hintText: "Password",
                obscureText: true,
                controller: passwordController,
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Forgot Password?",
                        style: TextStyle(
                          color: Colors.grey[600],
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),

              //sign in button
              mybotton(
                onTap: signUserIn,
              ),
              const SizedBox(
                height: 50,
              ),
              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text("Or continue with",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[700],
                          )),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              // google + apple button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Square_tile(imagepath: "lib/images/google.png"),
                  SizedBox(
                    width: 25,
                  ),
                  Square_tile(imagepath: "lib/images/apple.png"),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              //not a member? sign up
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Not a member?", style: TextStyle()),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Register Now",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
