import 'package:flutter/material.dart';
import 'package:proyek_akhir_flutter/home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<Login> {
  final bool _isObscured = true;
  final String _email = 'user@gmail.com';
  final String _password = '12345678';

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, //menghilangkan tombol kembali
        title: const Text('Login'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 120.0),
              child: const Text(
                'Login',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: const Text(
                'Silahkan Login untuk Masuk',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12),
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 15.0),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                          hintText: 'Write your email...',
                          labelText: 'Your Email',
                          border: OutlineInputBorder()),
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(fontSize: 12),
                    )
                  ],
                )),
            Container(
                margin: const EdgeInsets.only(top: 12.0),
                padding: const EdgeInsets.only(right: 15.0, left: 15.0),
                child: Column(
                  children: [
                    TextField(
                      controller: _passwordController,
                      decoration: const InputDecoration(
                          hintText: 'Write your password...',
                          labelText: 'Your Password',
                          border: OutlineInputBorder()),
                      keyboardType: TextInputType.text,
                      obscureText: _isObscured,
                      style: const TextStyle(fontSize: 12),
                    )
                  ],
                )),
            const SizedBox(height: 30),
            Column(
              children: [
                FilledButton(
                  onPressed: () {
                    if (_emailController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text('Silahkan masukkan Email')));
                      return;
                    }

                    if (_passwordController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text('Silahkan masukkan Kata Sandi')));
                      return;
                    }

                    if (_emailController.text != _email ||
                        _passwordController.text != _password) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text('Email atau kata sandi salah')));
                      return;
                    }

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const HomeScreen();
                    }));
                  },
                  style:
                      FilledButton.styleFrom(minimumSize: const Size(200, 50)),
                  child: const Text('Submit'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
