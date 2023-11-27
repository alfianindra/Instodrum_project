import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:project_uts/authentication/login.dart';
// import 'package:project_uts/data/user_data.dart';
// import 'package:project_uts/Screen/main_screen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController usernameText = TextEditingController();
  TextEditingController emailText = TextEditingController();
  TextEditingController phoneText = TextEditingController();
  TextEditingController passwordText = TextEditingController();
  TextEditingController CpasswordText = TextEditingController();
  bool isSignUpButtonEnabled = false;
  bool isPasswordVisible = false;
  bool isCPasswordVisible = false;

  @override
  void initState() {
    super.initState();
    usernameText.addListener(updateSignUpButtonState);
    emailText.addListener(updateSignUpButtonState);
    phoneText.addListener(updateSignUpButtonState);
    passwordText.addListener(updateSignUpButtonState);
    CpasswordText.addListener(updateSignUpButtonState);
  }

  void updateSignUpButtonState() {
    setState(() {
      final name = usernameText.text;
      final email = emailText.text;
      final phone = phoneText.text;
      final password = passwordText.text;
      final Cpassword = CpasswordText.text;
      isSignUpButtonEnabled = name.isNotEmpty &&
          email.isNotEmpty &&
          phone.isNotEmpty &&
          password.isNotEmpty &&
          Cpassword.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.network("https://cdn.discordapp.com/attachments/1019134439638450177/1177110647700455534/Instodrum.png?ex=657150b8&is=655edbb8&hm=7c7ed5f59ecabcdf5e9bb2a441fb1a9fc8325792af13eb7af2af61a0a1071da0&")
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Register",
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                controller: usernameText,
                style: const TextStyle(color: Colors.grey),
                decoration: const InputDecoration(
                  labelText: "Username",
                  hintText: "Username",
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
                controller: emailText,
                keyboardType: TextInputType.emailAddress,
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
                controller: phoneText,
                keyboardType: TextInputType.phone,
                style: const TextStyle(color: Colors.grey),
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter
                      .digitsOnly, // Hanya memungkinkan angka
                ],
                decoration: const InputDecoration(
                  labelText: "No. telp",
                  hintText: "No. telp",
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
                controller: passwordText,
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
              TextField(
                controller: CpasswordText,
                keyboardType: TextInputType.text,
                obscureText: !isCPasswordVisible,
                style: const TextStyle(color: Colors.grey),
                decoration: InputDecoration(
                  labelText: "Confirm Password",
                  hintText: "ConfirmPassword",
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
                      isCPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        isCPasswordVisible =
                            !isCPasswordVisible; // Mengubah status isPasswordVisible
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightGreenAccent,
                ),
                child: const Text(
                  "Buat akun",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: isSignUpButtonEnabled
                    ? () {
                        if (passwordText.text == CpasswordText.text) {
                          // Password dan Confirm Password sama
                          // UserData.username = usernameText.text;
                          // UserData.email = emailText.text;
                          // UserData.nohp = phoneText.text;
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (c) => MainScreen()));
                        } else {
                          // Password dan Confirm Password tidak sama
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Password Tidak Cocok"),
                                content: Text(
                                    "Password dan Confirm Password harus sama."),
                                actions: [
                                  TextButton(
                                    child: Text("OK"),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      }
                    : null,
              ),
              TextButton(
                child: const Text(
                  "Already have an Account? Login Here",
                  style: TextStyle(color: Colors.grey),
                ),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (c) => LoginScreen()),
                  // );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}