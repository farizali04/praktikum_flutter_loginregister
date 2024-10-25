import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Ambil argumen yang dikirim dari halaman login
    final arguments = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

    // Ambil nilai username dan email dari argumen
    String username = arguments?['username'] ?? 'User Name';
    String email = arguments?['email'] ?? 'user@example.com';

    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              // Icon untuk menunjukkan profil
              const Icon(
                Icons.person,
                size: 100,
                color: Colors.grey,
              ),
              const SizedBox(height: 20),

              // menampilkan teks Welcome
              Text(
                "Welcome Back",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),
              // Menampilkan nama pengguna
              Text(
                username, // Username dari argumen
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),

              // Menampilkan email pengguna
              Text(
                email, 
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 30),

              // Tombol untuk logout
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'Log Out',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Tombol untuk kembali ke halaman login
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: const Text(
                  "Back to Log In",
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
