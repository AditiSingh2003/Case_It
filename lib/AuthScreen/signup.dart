import 'package:case_it/AuthScreen/login.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../Widget/header.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 180,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        flexibleSpace: ClipPath(
          clipper: Customshape(),
          child: Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            color:  Color(0xFFFFDE32),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Row(
                    children: [
                      Text("Create Account",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.account_circle_outlined,
                      size: 30,
                      ),
                    ],
                  ),
              Text("Welcome !",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  ),
                  ],
              ),
            ),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Text('Sign Up to Case-It',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter Your Name",
                  labelText: "Name",
                  contentPadding: EdgeInsets.symmetric(horizontal: 20,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter Your Email",
                  labelText: "Email",
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter Your Password",
                  labelText: "Password",
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Confirm Your Password",
                  labelText: "Confirm Password",
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) {
                      // put the code here
                    },
                  ),
                  Expanded(
                    child: Text("I agree to the Terms of Service and Privacy Policy",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Sign Up",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                        ),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(150, 50),
                          primary: Color(0xFFFFDE32),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                  Text("Already have an account?",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login_Signup()));
                    },
                    child: Text("Login",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFFFFDE32),
                    )
                    ),
                  ),
                  ],
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