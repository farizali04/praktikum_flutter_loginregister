import 'package:flutter/material.dart';
// import 'package:login_register/komponen/button.dart';
import 'package:login_register/komponen/textfield.dart';

class Loginpage2 extends StatelessWidget{
  Loginpage2 ({super.key});

  // text editing controller
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  // log in user in method
 void logIn(BuildContext context) {
    String username = userNameController.text;
    String email = "user@example.com"; 

    // Mengarahkan ke halaman profil dengan mengirim username dan email
    Navigator.pushNamed(
      context,
      '/profile',
      arguments: {
        'username': username,
        'email': email,
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log In"),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child : Center(
        child: Column(
        children: [
          const SizedBox(height: 50),
          //logo 
          const Icon(
            Icons.lock,
            size : 100,
          ),

          const SizedBox(height: 25,),

          // text dibawah logo
          Text(
            'Welcome Back to this Applications',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 25),

          // username textfield
          CustomTextField(
            controller: userNameController,
            hintText: 'Username/Email/Nomor Handphone',
            obsecureText: false,
          ),
          const SizedBox(height: 14,),

          // password textfile
          CustomTextField(
            controller: passwordController,
            hintText: 'Password',
            obsecureText: true,
          ),
          const SizedBox(height: 10),

          // forgot password 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              Text(
                'Forgot Password ?',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          ),

          const SizedBox(height: 25,),

          // // sign in Button 
          // Button(
          //   onTap: logIn,
          // ),

        InkWell(
          onTap: () {
            logIn(context);
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
              'Log In',
              style: TextStyle(color: Colors.white), // Warna teks
            ),
          ),
        ),
          TextButton(
            onPressed: (){
              Navigator.pushNamed(context, '/register');
            }, 
            child: Text("Don`t have an account? Register.",
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