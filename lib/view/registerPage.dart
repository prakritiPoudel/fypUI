import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'package:google_fonts/google_fonts.dart';
import 'package:loader_overlay/loader_overlay.dart';

import '../constant.dart';

Future<http.Response> postRegister({
  required String name,
  required String email,
  required String password,
  required String phoneNumber,
  required String address,
}) {
  print(name);
  print(email);
  print(password);
  print(phoneNumber);
  print(address);
  return http.post(
    Uri.parse('${Constant.endPoint}/register'), //ip address ipV4
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      // 'Authorization': 'Bearer $',
    },
    body: jsonEncode(<String, String>{
      'name': name,
      'email': email,
      'address': address,
      'phone': phoneNumber,
      'password': password,
    }),
  );
}

class RegisterPage extends HookWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _obscureText = useState<bool>(true);
    final _formKey = GlobalKey<FormState>();
    final emailController = useTextEditingController();
    final nameController = useTextEditingController();
    final passwordController = useTextEditingController();
    final phoneController = useTextEditingController();
    final addressController = useTextEditingController();

    registerForm() async {
      _formKey.currentState!.validate();
      http.Response response = await postRegister(
          name: nameController.text,
          email: emailController.text,
          password: passwordController.text,
          phoneNumber: phoneController.text,
          address: addressController.text);
      print(response.body);
    }

    return LoaderOverlay(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            height: 800,
            width: 800,
            child: Center(
                child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Text("Sign UP",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(240, 33, 33, 243)))),
                  Text("create your new account ",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(fontSize: 12))),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0, right: 60.0),
                    child: TextFormField(
                      controller: nameController,
                      validator: (value) {
                        if (value!.length < 6) {
                          return "Invalid username";
                        }
                        return null;
                      },
                      // controller: controller.nameController,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        label: Text("Username"),
                        hintText: "Enter your username",
                        hintStyle: TextStyle(
                          fontSize: 12,
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,

                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        // borderRadius: BorderRadius.circular(50.0),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0, right: 60.0),
                    child: TextFormField(
                      controller: emailController,
                      validator: (value) {
                        if (value!.length < 6) {
                          return "Invalid Email";
                        }
                        return null;
                      },
                      // controller: controller.emailController,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        label: Text("Email"),
                        hintText: " Enter your Email",
                        hintStyle: TextStyle(
                          fontSize: 12,
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,

                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        // borderRadius: BorderRadius.circular(50.0),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0, right: 60.0),
                    child: TextFormField(
                      controller: addressController,
                      validator: (value) {
                        if (value!.length < 0) {
                          return "Invalid address";
                        }
                        return null;
                      },
                      // controller: controller.phoneController,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        label: Text("Address"),
                        hintText: " Enter your address",
                        hintStyle: TextStyle(
                          fontSize: 12,
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,

                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        // borderRadius: BorderRadius.circular(50.0),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0, right: 60.0),
                    child: TextFormField(
                      controller: phoneController,
                      validator: (value) {
                        if (value!.length < 10) {
                          return "Invalid phone number";
                        }
                        return null;
                      },
                      // controller: controller.phoneController,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        label: Text("Phone Number"),
                        hintText: " Enter your PhoneNumber",
                        hintStyle: TextStyle(
                          fontSize: 12,
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,

                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        // borderRadius: BorderRadius.circular(50.0),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 40.0, right: 60.0),
                    child: TextFormField(
                      controller: passwordController,
                      validator: (value) {
                        if (value!.length < 6) {
                          return "Ivalid password";
                        }
                        return null;
                      },
                      // controller: controller.passwordController,
                      obscureText: _obscureText.value,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        suffixIcon: GestureDetector(
                            onTap: () {
                              _obscureText.value = !_obscureText.value;
                            },
                            child: Icon(_obscureText.value
                                ? Icons.visibility_off
                                : Icons.visibility)),
                        label: const Text("Password"),
                        hintText: "Enter your password",
                        hintStyle: const TextStyle(
                          fontSize: 12,
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,

                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        // borderRadius: BorderRadius.circular(50.0),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // const SizedBox(
                  //   height: 30,
                  // ),
                  // const Padding(
                  //   padding: EdgeInsets.only(left: 40.0, right: 60.0),
                  //   child: TextField(
                  //     decoration: InputDecoration(
                  //       contentPadding: EdgeInsets.symmetric(
                  //           vertical: 10.0, horizontal: 10.0),
                  //       label: Text("Conform Password"),
                  //       hintText: "Re-type password",
                  //       hintStyle: TextStyle(
                  //         fontSize: 12,
                  //       ),
                  //       floatingLabelBehavior: FloatingLabelBehavior.always,

                  //       focusedBorder: OutlineInputBorder(
                  //         borderSide: BorderSide(
                  //           color: Colors.black,
                  //         ),
                  //       ),
                  //       // borderRadius: BorderRadius.circular(50.0),
                  //       enabledBorder: OutlineInputBorder(
                  //         borderSide: BorderSide(
                  //           color: Colors.black,
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  ElevatedButton(
                    onPressed: registerForm,
                    child: const Text("Register"),
                  ),
                ],
              ),
            )),
          ),
        ),
      ),
    );
  }
}
