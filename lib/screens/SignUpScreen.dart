import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Signupscreen extends StatefulWidget {
  Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _Signupscreenstate();
}

class _Signupscreenstate extends State<Signupscreen> {
  // ganti placeholder dengan scaffold  dan buat
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _namalengkap = TextEditingController();

  String _errorText = '';
  bool _isSignedIn = false;
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Todo : 2. Pasang AppBar
      appBar: AppBar(title: Text('Sign Up')),
      // Todo : 3. Padang body
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              child: Column(
                // Todo : 4. Atur mainAxisAlignment dan crossAxisAligment
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Todo: 5. Pasang TextFormField Nama Pengguna
                  TextField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      labelText: "Nama Pengguna",
                      border: OutlineInputBorder(),
                    ),
                  ),

                  // tambah textformfield dengan nama lengkap
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _namalengkap,
                    decoration: InputDecoration(
                      labelText: "Nama Lengkap",
                      border: OutlineInputBorder(),
                    ),
                  ),

                  // Todo: 6. Pasang TextFormField Kata Sandi
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: "Kata Sandi",
                      errorText: _errorText.isNotEmpty ? _errorText : null,
                      border: OutlineInputBorder(),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                        icon: Icon(
                          _obscurePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      ),
                    ),
                    obscureText: _obscurePassword,
                  ),

                  // Todo: 7. Pasang ElevatedButton Sign In
                  SizedBox(height: 20),
                  ElevatedButton(onPressed: () {}, child: Text('Sign Up')),
                  // Todo: 8. Pasang TextButton Sign Up
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
