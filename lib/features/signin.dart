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
          image: AssetImage('assets/images/sample.jpg'), 
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
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
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 130),
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
          ],
        ),
      ),
    ),
  );
}
}
