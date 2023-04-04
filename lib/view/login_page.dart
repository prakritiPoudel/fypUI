import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:sp_ui/constant.dart';
//import 'package:sp_ui/controller/login_controller.dart';
import 'package:sp_ui/view/registerPage.dart';
import 'package:sp_ui/widgets/styles.dart';

Future<http.Response> postLogin(
    {required String email, required String password}) {
  return http.post(
    Uri.parse('${Constant.endPoint}/login'), //ip address ipV4
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      // 'Authorization': 'Bearer $',
    },
    body: jsonEncode(<String, String>{
      'email': email,
      'password': password,
    }),
  );
}

class Login extends HookWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _obscureText = useState<bool>(true);
    final isChecked = useState<bool>(false);

    final usernameController = useTextEditingController();
    final passwordController = useTextEditingController();
    final _formKey = GlobalKey<FormState>();

    submitForm() async {
      _formKey.currentState!.validate();
      http.Response response = await postLogin(
          email: usernameController.text, password: passwordController.text);
      print(response.body);
    }

    return LoaderOverlay(
      //this package prevent the user from interacting with the screen until the async task finishes.
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Center(
                  child: Stack(
                    children: [
                      Container(
                        width: 400,
                        height: 440,
                        margin: const EdgeInsets.only(
                            top: 70.0, left: 20.0, right: 20),
                        child: Card(
                          elevation: 20,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      fontSize: (40),
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 7, 81, 239)),
                                  textAlign: TextAlign.right,
                                ),
                              ),

                              // email textfield form
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 30.0, right: 30.0, left: 30.0),
                                child: TextFormField(
                                  controller: usernameController,
                                  validator: (value) {
                                    if (value!.length < 6) {
                                      return "Invalid name";
                                    }
                                    return null;
                                  },
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    prefixIcon: const Icon(
                                      Icons.email,
                                      color: Colors.black,
                                    ),
                                    hintText: "Enter your email ",
                                    hintStyle: KhintStyle,
                                    filled: true,
                                    fillColor: kFillColor,
                                    focusedBorder: kFocusedBorder,
                                    enabledBorder: kEnabledBorder,
                                  ),
                                ),
                              ),

                              //Password text field form
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 30.0, right: 30.0, left: 30.0),
                                child: TextFormField(
                                  controller: passwordController,
                                  validator: (value) {
                                    if (value!.length < 6) {
                                      return "Invalid passsword";
                                    }
                                    return null;
                                  },
                                  textAlign: TextAlign.center,
                                  obscureText: _obscureText.value,
                                  decoration: InputDecoration(
                                    prefixIcon: const Icon(
                                      Icons.lock,
                                      color: Colors.black,
                                    ),
                                    suffixIcon: GestureDetector(
                                        onTap: () {
                                          _obscureText.value =
                                              !_obscureText.value;
                                        },
                                        child: Icon(_obscureText.value
                                            ? Icons.visibility_off
                                            : Icons.visibility)),
                                    hintText: "Enter your Password ",
                                    hintStyle: KhintStyle,
                                    filled: true,
                                    fillColor: kFillColor,
                                    focusedBorder: kFocusedBorder,
                                    enabledBorder: kEnabledBorder,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                    value: isChecked.value,
                                    onChanged: (value) {
                                      isChecked.value = !isChecked.value;
                                    },
                                  ),
                                  const Text(
                                    "Remember Me",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 35, 49, 251),
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: const Padding(
                                      padding: EdgeInsets.only(left: 50.0),
                                      child: Text(
                                        "Forgot Password ?",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 33, 47, 243)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const Padding(
                                    padding:
                                        EdgeInsets.only(left: 60.0, right: 2.0),
                                    child: Text(
                                      "Don't have an account!",
                                      style: TextStyle(
                                          fontFamily: "Arial",
                                          color: Colors.black),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  RegisterPage()));
                                    },
                                    child: const Text(
                                      " SignUP here...",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 33, 47, 243),
                                          fontSize: 16),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: SizedBox(
                    height: 50,
                    width: 200,
                    child: Card(
                      elevation: 20,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0),
                      ),
                      child: ElevatedButton(
                        onPressed: submitForm,
                        child: const Text('Login'),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
