import 'package:flutter/material.dart';
// import 'package:login_register/komponen/button.dart';
import 'package:login_register/komponen/textfield.dart';

class Registerpage2 extends StatelessWidget{
  Registerpage2 ({super.key});

  // text editing controller
  final realNameController = TextEditingController();
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  final password1Controller = TextEditingController();

  // log in user in method
  // void logIn(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child : Center(
        child: Column(
        children: [
          const SizedBox(height: 40),
          //logo 
          const Icon(
            Icons.account_circle,
            size : 100,
          ),

          const SizedBox(height: 20,),

          // text dibawah logo
          const Text(
            "Please Fill Your Biodata",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 20),

          // nama textfield
           CustomTextField(
            controller: realNameController,
            hintText: 'Name',
            obsecureText: false,
          ),
          const SizedBox(height: 14,),

          // username textfield
          CustomTextField(
            controller: userNameController,
            hintText: 'Username',
            obsecureText: false,
          ),
          const SizedBox(height: 14,),

          // password textfield
          CustomTextField(
            controller: passwordController,
            hintText: 'Password',
            obsecureText: true,
          ),

          const SizedBox(height: 14),

          // password confirm texfield
          CustomTextField(
            controller: password1Controller,
            hintText: 'Confirm Password',
            obsecureText: true,
          ),
          const SizedBox(height: 10),

          // forgot password 
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 25),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.end,
          //     children: [
          //     Text(
          //       'Forgot Password ?',
          //       style: TextStyle(color: Colors.black),
          //     ),
          //   ],
          // ),
          // ),

          const SizedBox(height: 25,),

          // // sign in Button 
          // Button(
          //   onTap: logIn,
          // ),

        InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/');
          },
          child: Container(
            width: 200, // Lebar tombol
            height: 50, // Tinggi tombol
            decoration: BoxDecoration(
              color: Colors.black, // Warna latar belakang
              borderRadius: BorderRadius.circular(12), // Radius sudut
            ),
            alignment: Alignment.center, // Mengatur posisi teks
            child: const Text(
              'Register',
              style: TextStyle(color: Colors.white), // Warna teks
            ),
          ),
        ),
          TextButton(
            onPressed: (){
              Navigator.pushNamed(context, '/');
            }, 
            child: const Text("Have an account? Log In.",
            style: TextStyle(color: Colors.black),
            ),
            ),

          // const SizedBox(height: 50),

        ],
        ),
      ),
      )
    );
  }
}