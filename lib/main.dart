import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RegisterPage()),
              );
            },
            child: Text(
              'Register',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                // Implement your login logic here
                String username = _usernameController.text;
                String password = _passwordController.text;

                if (username == 'your_username' &&
                    password == 'your_password') {
                  // Login successful, navigate to home or next screen
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                } else {
                  // Login failed, show error message
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Login Failed'),
                      content: Text('Invalid username or password.'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('OK'),
                        ),
                      ],
                    ),
                  );
                }
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

class RegisterPage extends StatelessWidget {
  TextEditingController _newUsernameController = TextEditingController();
  TextEditingController _newPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _newUsernameController,
              decoration: InputDecoration(labelText: 'New Username'),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _newPasswordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'New Password'),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                // Implement your registration logic here
                String newUsername = _newUsernameController.text;
                String newPassword = _newPasswordController.text;

                // This is a placeholder, update it with your actual implementation
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Registration'),
                    content: Text(
                        'Registration button pressed!\n\nNew Username: $newUsername\nNew Password: $newPassword'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('OK'),
                      ),
                    ],
                  ),
                );
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            onPressed: () {
              // Implement your profile logic here
              // This is a placeholder, update it with your actual implementation
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text('Profile'),
                  content: Text('Profile button pressed!'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('OK'),
                    ),
                  ],
                ),
              );
            },
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to the Home Screen!'),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Implement your scan logic here
                // This is a placeholder, update it with your actual implementation
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Scan'),
                    content: Text('Scan button pressed!'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('OK'),
                      ),
                    ],
                  ),
                );
              },
              child: Text('Scan'),
            ),
            ElevatedButton(
                onPressed: () {
                  print('Aktifkan Kamera Anda!');
                },
                child: Text('Buat Layout Rumah'))
          ],
        ),
      ),
    );
  }
}
