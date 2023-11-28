import 'package:cc206_magic_calculator_malic_sornito_velez/features/register.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cc206_magic_calculator_malic_sornito_velez/features/article.dart';

class Signin extends StatelessWidget {
  const Signin({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/sample.png'), 
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  labelStyle: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                  contentPadding: EdgeInsets.symmetric(vertical: 5), 
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  contentPadding: EdgeInsets.symmetric(vertical: 5), 
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Header())); 
              },
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFFFF001747),
                onPrimary: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 130),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0), 
                ),
              ),
              child: Text(
                'Login',
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.5), 
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Have no account?  ',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFFFF001747),
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Register())); 
                  },
                  child: const Text(
                    'REGISTER NOW',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFFFF001747),
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
