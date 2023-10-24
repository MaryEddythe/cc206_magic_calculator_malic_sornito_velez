import 'package:flutter/material.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});
//sample sign in rough draft lang//
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
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 20),
               ElevatedButton(
              onPressed: () {
             Navigator.pop(context);
               },
               style: ElevatedButton.styleFrom(
               backgroundColor: Color(0xFF0b4f6c),
               foregroundColor: Colors.white,
               ),
               child: Text('Sign In'),
               )
            ],
          ),
        ),
      ),
    );
  }
}
