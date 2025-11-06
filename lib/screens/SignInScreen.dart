import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Signinscreen extends StatefulWidget {
   Signinscreen({super.key});

  @override
  State<Signinscreen> createState() => _SigninscreenState();
}

class _SigninscreenState extends State<Signinscreen> {
  // ganti placeholder dengan scaffold  dan buat
  final TextEditingController _usernameController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  String _errorText = '';
  bool _isSignedIn = false;
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Todo : 2. Pasang AppBar
      appBar: AppBar(title: Text('Sign In'),),
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
                    // Todo: 6. Pasang TextFormField Kata Sandi
                    SizedBox(height: 20,),
                    TextFormField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        labelText: "Kata Sandi",
                        errorText: _errorText.isNotEmpty ? _errorText : null,
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                          onPressed: (){
                            setState(() {
                              _obscurePassword = !_obscurePassword;
                            });
                          },
                          icon: Icon(_obscurePassword ? Icons.visibility_off
                            : Icons.visibility),),
                      ),
                      obscureText: _obscurePassword,
                    ),
                    // Todo: 7. Pasang ElevatedButton Sign In
                    SizedBox(height: 20),
                    ElevatedButton(
                        onPressed: (){},
                        child: Text('Sign In')),
                    // Todo: 8. Pasang TextButton Sign Up
                    SizedBox(height: 10),
                    // INI YANG MENGGUNAKAN TEXT BUTTON
                    // TextButton(
                    //   onPressed: (){},
                    //   child: Text('Belum punya akun? Daftar di sini.')),

                    // INI YANG MENGGUNAKNA RICH BUTTON
                    RichText(
                      text: TextSpan(
                          text: 'Belum punya akun?',
                          style: TextStyle(fontSize: 16, color: Colors.deepPurple),
                          children: <TextSpan>[
                            TextSpan(
                                text: ' Daftar di sini',
                                style: TextStyle(
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline,
                                    fontSize: 16
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = (){}
                            )
                          ]
                      ),

                    ),
                  ],
                )),
          ),
        )
      ),
    );
  }
}
