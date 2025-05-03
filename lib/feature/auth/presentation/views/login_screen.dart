import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Image.asset("assets/images/login.png"),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter your email";
                      }
                      if (!value.contains("@")) {
                        return "Please Enter a correct email";
                      }
                      return "null";
                    },
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    enabled: true,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 15,
                      ),
                      hintText: "Email",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        fontFamily: "Montserrat",
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 3, color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 3, color: Colors.grey),
                      ),
                      focusColor: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter your password";
                      }

                      return "null";
                    },
                    controller: _passwordController,
                    keyboardType: TextInputType.emailAddress,
                    enabled: true,

                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.visibility),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 15,
                      ),
                      hintText: "Password",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        fontFamily: "Montserrat",
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 3, color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                  fontFamily: "Montserrat",
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Color.fromRGBO(52, 152, 219, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white,
                    fontFamily: "Montserrat",
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Divider(
                    thickness: 2,
                    color: Color.fromRGBO(192, 192, 192, 1),
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  "Or sign in using",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                    color: Color.fromRGBO(192, 192, 192, 1),
                    fontFamily: "Roboto",
                  ),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Divider(
                    thickness: 2,
                    color: Color.fromRGBO(192, 192, 192, 1),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),

            Container(
              height: 59,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 2,
                  color: Color.fromRGBO(231, 76, 60, 1),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Image.asset("assets/images/google.png"),
                  ),
                  Spacer(),
                  Text(
                    "Google",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color.fromRGBO(231, 76, 60, 1),
                      fontFamily: "Montserrat",
                    ),
                  ),
                  Spacer(flex: 2),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 59,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 2,
                  color: Color.fromRGBO(52, 152, 219, 1),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Image.asset("assets/images/facebook.png"),
                  ),
                  Spacer(),
                  Text(
                    "Facebook",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color.fromRGBO(52, 152, 219, 1),
                      fontFamily: "Montserrat",
                    ),
                  ),
                  Spacer(flex: 2),
                ],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                    color: Colors.black,
                    fontFamily: "Montserrat",
                  ),
                ),

                GestureDetector(
                  child: Text(
                    "Register ",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: Color.fromRGBO(52, 152, 219, 1),
                      fontFamily: "Montserrat",
                    ),
                  ),
                ),
                Text(
                  "now.",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                    color: Colors.black,
                    fontFamily: "Montserrat",
                  ),
                ),
              ],
            ),
            Spacer(flex: 3),
          ],
        ),
      ),
    );
  }
}
