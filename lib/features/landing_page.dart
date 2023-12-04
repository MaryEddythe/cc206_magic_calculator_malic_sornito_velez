import 'package:flutter/material.dart';

import 'sign_in.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 30.0),
        child: Column(
          children: [
            Material(
              elevation: 3.0,
              borderRadius: BorderRadius.circular(30),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  "assets/images/city.jpg",
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.5,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            const Text("Behold the gateway to the unfiltered truth.",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500)),
            const SizedBox(
              height: 20.0,
            ),
            const Text("No. 1 Most Trusted News Source of 2023",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Material(
                borderRadius: BorderRadius.circular(30),
                elevation: 5.0,
                child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    decoration: BoxDecoration(
                        color: const Color(0xFF00072d),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Signin()));
                        },
                        child: const Text("Get Started",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.0,
                                fontWeight: FontWeight.w500)),
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
