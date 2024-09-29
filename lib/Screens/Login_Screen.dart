import 'package:flutter/material.dart';
import 'package:real_estate_app/Login_footer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isPasswordVisible = false; // Password visibility toggle

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, // Allows body to resize when the keyboard is visible
      body: SingleChildScrollView( // Prevents overflow by allowing the content to scroll
        child: Column(
          children: [
            Image.asset('assets/images/loginscr.png'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const Text(
                    'Let\'s ',
                    style: TextStyle(fontSize: 30),
                  ),
                  const Text(
                    'Sign in',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Color(0xff1F4C6B)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Row(
                children: [
                  Text('quis nostrad exercition ullamo laboris nisi ut'),
                ],
              ),
            ),
            const SizedBox(height: 80),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Email",
                  fillColor: const Color(0xffF5F4F8),
                  filled: true,
                  hintStyle: const TextStyle(color: Color(0xffA1A5C1)),
                  prefixIcon: const Icon(Icons.email),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xffA1A5C1)),
                      borderRadius: BorderRadius.circular(10)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xffF5F4F8)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: !_isPasswordVisible,
                decoration: InputDecoration(
                  hintText: "Password",
                  fillColor: const Color(0xffF5F4F8),
                  filled: true,
                  hintStyle: const TextStyle(color: Color(0xffA1A5C1)),
                  prefixIcon: const Icon(Icons.lock),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xffA1A5C1)),
                      borderRadius: BorderRadius.circular(10)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xffF5F4F8)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  const Text('Forget Password?'),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible; // Toggle password visibility
                      });
                    },
                    child: Text(
                      _isPasswordVisible ? 'Hide Password' : 'Show Password',
                      // style: const TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
        SizedBox(height: 50,),
        ElevatedButton(style: TextButton.styleFrom(
            backgroundColor: Colors.green,
            minimumSize: Size(265, 60),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            )


        ),
          onPressed: () {},
          child:
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Login',style: TextStyle(color: Colors.white70,fontSize: 20),),

            ],

          ),
        ),SizedBox(height: 70),
            const LoginFooter(), // Footer at the bottom
          ],
        ),
      ),
    );
  }
}

