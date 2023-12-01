import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instodrum/button/UiButton.dart';
import 'package:instodrum/registerpage.dart';
import 'package:instodrum/homepage.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  bool SignInButton = false;
  bool isPasswordVisible = false;
  @override
  void initState() {
    super.initState();
    _emailTextController.addListener(updateSignUpButtonState);
    _passwordTextController.addListener(updateSignUpButtonState);
  }

  void updateSignUpButtonState() {
    setState(() {
      final email = _emailTextController.text;
      final password = _passwordTextController.text;
      SignInButton = email.isNotEmpty && password.isNotEmpty;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                Image.asset(
                  'assets/images/instodrum.png',
                  height: 250,
                  width: 200,
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: _emailTextController,
                  style: const TextStyle(color: Colors.grey),
                  decoration: const InputDecoration(
                    labelText: "Email",
                    hintText: "Email@gmail.com",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                    labelStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 25,
                    ),
                  ),
                ),
                TextField(
                  controller: _passwordTextController,
                  keyboardType: TextInputType.text,
                  obscureText: !isPasswordVisible,
                  style: const TextStyle(color: Colors.grey),
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Password",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                    labelStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 25,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          isPasswordVisible =
                              !isPasswordVisible; // Mengubah status isPasswordVisible
                        });
                      },
                    ),
                  ),
                ),
                UiButton(context, "Sign in", () {
                  FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: _emailTextController.text,
                          password: _passwordTextController.text)
                      .then((value) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  }).onError((error, stackTrace) {
                    print("Error ${error.toString()}");
                  });
                }),
                signUpButton()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row signUpButton() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      const Text("Don't have account?", style: TextStyle(color: Colors.grey)),
      GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SignUpScreen()));
        },
        child: const Text(
          " Sign Up",
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
        ),
      )
    ]);
  }
}
