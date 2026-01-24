import 'package:ecommerce/screens/login_screen.dart';
import 'package:flutter/material.dart';

class RecoveryScreen extends StatefulWidget {
  const RecoveryScreen({super.key});

  @override
  State<RecoveryScreen> createState() => _RecoveryScreenState();
}

final _formKey = GlobalKey<FormState>();

class _RecoveryScreenState extends State<RecoveryScreen> {
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.arrow_back),

        // backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Recover Account',
              style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40),

            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter Reset Code';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
                          child: Icon(Icons.numbers),
                        ),
                        hintText: 'Reset Code',
                        contentPadding: EdgeInsets.all(20),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade700),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

                    TextFormField(
                      controller: passwordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter Password';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
                          child: Icon(Icons.visibility),
                        ),
                        prefixIcon: Padding(
                          padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
                          child: Icon(Icons.lock),
                        ),
                        hintText: 'New Password',
                        contentPadding: EdgeInsets.all(20),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade700),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      validator: (value) {
                        if (passwordController.text != value) {
                          return 'Password does not match';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
                          child: Icon(Icons.visibility),
                        ),
                        prefixIcon: Padding(
                          padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
                          child: Icon(Icons.lock),
                        ),
                        hintText: 'Confirm Password',
                        contentPadding: EdgeInsets.all(20),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade700),
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 182, 13, 13),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        minimumSize: Size(double.infinity, 65),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Password Reset Succesful!'),
                            ),
                          );
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
                        }
                      },
                      child: Text(
                        'Reset Password',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
