import 'package:flutter/material.dart';
import 'package:sp_ui/screen/registerPage.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obscureText = true;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Login"),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                width: 400,
                height: 440,
                padding:
                    const EdgeInsets.only(top: 70.0, left: 20.0, right: 20),
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
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.email,
                              color: Colors.black,
                            ),
                            hintText: "Enter your username ",
                            hintStyle: const TextStyle(
                                color: Color.fromARGB(255, 174, 175, 175)),
                            filled: true,
                            fillColor: const Color.fromARGB(22, 251, 222, 237),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(100.0)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(100.0)),
                          ),
                        ),
                      ),

                      //Password text field form
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 30.0, right: 30.0, left: 30.0),
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          obscureText:
                              _obscureText, //making dynamic value of obscure text hide or show
                          //obscuringCharacter: '#',
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.lock,
                              color: Colors.black,
                            ),
                            suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _obscureText = !_obscureText;
                                  });
                                },
                                child: Icon(_obscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off)),
                            hintText: "Enter your Password ",
                            hintStyle: const TextStyle(
                                color: Color.fromARGB(255, 174, 175, 175)),
                            filled: true,
                            fillColor: const Color.fromARGB(22, 251, 222, 237),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(50.0)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(100.0)),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: Checkbox(
                              value: isChecked,
                              onChanged: (value) {
                                isChecked = !isChecked;
                                setState(() {});
                              },
                            ),
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
                                    color: Color.fromARGB(255, 33, 47, 243)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 60.0, right: 2.0),
                            child: Text(
                              "Don't have an account!",
                              style: TextStyle(
                                  fontFamily: "Arial", color: Colors.black),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RegisterPage()));
                            },
                            child: const Text(
                              " SignUP here...",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 33, 47, 243),
                                  fontSize: 16),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                height: 50,
                width: 200,
                child: Card(
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0),
                  ),
                  child: ElevatedButton(
                    child: const Text('Login'),
                    onPressed: () {},
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
