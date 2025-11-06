import 'package:flutter/material.dart';

class Signinscreen extends StatelessWidget {
  const Signinscreen({super.key});

  // ganti placeholder dengan scaffold  dan buat todo

  // TODO: 1 Deklarasi Variabel
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String _errorText = '';
  bool _isSignedIn = false;
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // Todo : 2. Pasang AppBar
      appBar: AppBar(title: Text('Sign In'),),
      // Todo : 3. Padang body
      body: Center(
        child: Form(
          child: Column(
            // Todo : 4. Atur mainAxisAlignment dan crossAxisAligment
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Todo: 5. Pasang TextFormField Nama Pengguna
              TextFormField()
              // Todo: 6. Pasang TextFormField Kata Sandi
              // Todo: 7. Pasang ElevatedButton Sign In 
            ],
          )),
      ),
    );
  }
}
