import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/3.forget_password_screen.dart';
import 'package:food_delivery_app/screens/4.phone_varificarion_screen.dart';
import 'package:food_delivery_app/screens/7.home_screen.dart';

class LoginSignup extends StatelessWidget {
  const LoginSignup({super.key});

  Widget _buildElevatedButton(
    String text,
    Function() onPressed,
    Color buttonColor,
    Color textColor,
  ) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 12, color: textColor),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Column(
                children: [
                  Image(
                    height: 100,
                    width: 100,
                    image: AssetImage('assets/images/logo.jpg'),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Just click your own helper',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildElevatedButton(
                    'Login',
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                    const Color.fromARGB(255, 255, 102, 0),
                    Colors.white,
                  ),
                  const SizedBox(width: 10),
                  _buildElevatedButton('Sign Up', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginSignup(),
                      ),
                    );
                  }, Colors.white, Colors.black),
                ],
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Please sign up to create an account',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: const TextStyle(fontSize: 12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: const TextStyle(fontSize: 12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ForgotPassword(),
                      ),
                    );
                  },
                  child: const Text(
                    'Forgot Password ?',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 102, 0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              _buildElevatedButton(
                'Sign In',
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const PhoneVerification(isPasswordReset: false),
                    ),
                  );
                },
                const Color.fromARGB(255, 255, 102, 0),
                Colors.white,
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Expanded(
                    child: Divider(
                      height: 40,
                      color: Colors.black,
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      'OR',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      height: 40,
                      color: Colors.black,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.facebook,
                      color: Colors.black,
                      size: 16,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Continue with Google',
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.facebook,
                      color: Colors.black,
                      size: 16,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Continue with Google',
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
