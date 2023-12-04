// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';

import 'home.dart';
import 'register.dart';

class Signin extends StatelessWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/sample.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 300),
              Container(
                width: 300,
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                    contentPadding: EdgeInsets.symmetric(vertical: 5),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 300,
                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                    contentPadding: EdgeInsets.symmetric(vertical: 5),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const Home()));
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xffff001747),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 130),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.2),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Don\'t have an account yet?  ',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xffff001747),
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Register()));
                    },
                    child: const Text(
                      'REGISTER NOW',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xffff001747),
                        fontWeight: FontWeight.w600,
                        fontFamily: "Poppins",
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
