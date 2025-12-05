import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  }
}
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back, color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("Login",
            style: TextStyle(color: Colors.black, fontSize: 18)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const Text(
              "Continue with email",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // Email
            const TextField(
              decoration: InputDecoration(
                labelText: "Email",
                border: UnderlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),

            // Password
            TextField(
              obscureText: obscure,
              decoration: InputDecoration(
                labelText: "Password",
                border: const UnderlineInputBorder(),
                suffix: GestureDetector(
                  onTap: () => setState(() => obscure = !obscure),
                  child: Text(
                    obscure ? "Show" : "Hide",
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            // Login Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                onPressed: () {},
                child: const Text("Login", style: TextStyle(fontSize: 16)),
              ),
            ),

            const SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Forgot password ?",
                    style: TextStyle(color: Colors.purple[700])),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const RegisterScreen()),
                    );
                  },
                  child: Text("Create an account",
                      style: TextStyle(color: Colors.purple[700])),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool obscure = true;
  bool receiveOffers = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back, color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("Welcome to talabat",
            style: TextStyle(color: Colors.black, fontSize: 18)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const Text("Continue with email",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),

            // First name
            const TextField(
              decoration: InputDecoration(
                labelText: "First name",
                border: UnderlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            // Last name
            const TextField(
              decoration: InputDecoration(
                labelText: "Last name",
                border: UnderlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            // Email
            const TextField(
              decoration: InputDecoration(
                labelText: "Email",
                border: UnderlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            // Password
            TextField(
              obscureText: obscure,
              decoration: InputDecoration(
                labelText: "Choose password",
                border: const UnderlineInputBorder(),
                suffix: GestureDetector(
                  onTap: () => setState(() => obscure = !obscure),
                  child: Text(
                    obscure ? "Show" : "Hide",
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 5),
            const Text(
              "your password must be at least 6 characters",
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),

            const SizedBox(height: 10),

            // Checkbox
            Row(
              children: [
                Checkbox(
                    activeColor: Colors.black,
                    value: receiveOffers,
                    onChanged: (v) {
                      setState(() => receiveOffers = v!);
                    }),
                const Expanded(
                  child: Text(
                    "Yes, I want to receive offers and discounts.",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),

            // Create Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                onPressed: () {},
                child: const Text("Create account",
                    style: TextStyle(fontSize: 16)),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "By creating an account you agree to the Privacy policy\nand to the terms of use",
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
