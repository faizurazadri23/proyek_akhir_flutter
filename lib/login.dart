import 'package:flutter/material.dart';
import 'package:proyek_akhir_flutter/home.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  String _name = '';
  bool _isObscured = true;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, //menghilangkan tombol kembali
        title: Text('Login'),
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
                      decoration: const InputDecoration(
                          hintText: 'Write your email...',
                          labelText: 'Your Email',
                          border: OutlineInputBorder()),
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(fontSize: 12),
                      onChanged: (String value) {},
                    )
                  ],
                )),
            Container(
                margin: const EdgeInsets.only(top: 12.0),
                padding: const EdgeInsets.only(right: 15.0, left: 15.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: const InputDecoration(
                          hintText: 'Write your password...',
                          labelText: 'Your Password',
                          border: OutlineInputBorder()),
                      keyboardType: TextInputType.text,
                      obscureText: _isObscured,
                      style: const TextStyle(fontSize: 12),
                      onChanged: (String value) {},
                    )
                  ],
                )),
            const SizedBox(height: 30),
            Container(
              child: Column(
                children: [
                  FilledButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const HomeScreen();
                      }));
                    },
                    child: const Text('Submit'),
                    style: FilledButton.styleFrom(minimumSize: Size(200, 50)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}