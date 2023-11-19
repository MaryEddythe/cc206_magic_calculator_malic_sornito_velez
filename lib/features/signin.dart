import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cc206_magic_calculator_malic_sornito_velez/features/article.dart';

class Signin extends StatelessWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/wallpaper.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 225,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 225, 
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),

              SizedBox(height: 20),
              ElevatedButton(
              onPressed: () { //onPressed section working//
              Navigator.push(context, MaterialPageRoute(builder: (context) => Header())); //next section working//
              },
              style: ElevatedButton.styleFrom(
              primary: Color(0xFFFF001747),
              onPrimary: Colors.white,
             ),
             child: Text(
            'Sign In',
             style: GoogleFonts.poppins( 
            fontSize: 15,
            fontWeight: FontWeight.w600,
            ),
          ),
        )
            ],
          ),
        ),
      ),
    );
  }
}
