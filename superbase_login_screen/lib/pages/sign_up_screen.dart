import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:superbase_login_screen/pages/login_screen.dart';
import 'package:superbase_login_screen/widgets/textfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 120.0, right: 120.0, top: 14.0, bottom: 10.0),
            child: Image.asset(
              "lib/images/flash.png",
              width: 120,
              height: 120,
            ),
          ),
          Text(
            "Registration",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Kindly register below",
            style: GoogleFonts.poppins(),
          ),
          SizedBox(
            height: 12,
          ),
          Textfield(
            label: 'Username',
          ),
          Textfield(
            label: "Email",
          ),
          Textfield(
            label: "Password",
          ),
          Textfield(
            label: "Confirm Password",
          ),
          SizedBox(
            height: 8,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                minimumSize: Size(344, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            child: Text(
              "Register",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 26,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 4.0),
                child: Container(
                  height: 2,
                  width: 100,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                width: 2,
              ),
              Text(
                "Or continue with",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                ),
              ),
              SizedBox(
                width: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4.0, right: 16.0),
                child: Container(
                  height: 2,
                  width: 100,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 42,
            width: 342,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 120.0,
                    right: 8,
                  ),
                  child: Image.asset(
                    "lib/images/google.png",
                    scale: 24.0,
                  ),
                ),
                Text(
                  "Google",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40.0, top: 8.0),
                child: Text(
                  "Don't have an account?",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                  ),
                ),
              ),
              SizedBox(
                width: 4,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpScreen(),
                      ),
                    );
                  },
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Login Here",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
