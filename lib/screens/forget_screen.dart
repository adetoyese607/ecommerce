import 'package:ecommerce/screens/recovery_screen.dart';
import 'package:flutter/material.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({super.key});

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}


class _ForgetScreenState extends State<ForgetScreen> {
  final _formKey = GlobalKey<FormState>();
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
              'Forgot Password',
              style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40,),
            Text(
              'Please enter your email address. You will receive a link to create or set a new password via email.',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                // fontWeight: FontWeight.bold,
              ),
      
            ),
            SizedBox(height: 20,),
           Form(
            key: _formKey,
            child: Column(
            children: [
               TextFormField(
              validator: (value){
                const pattern = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
              final regex = RegExp(pattern);
            
              if (value == null || value.isEmpty || !regex.hasMatch(value)) {
                return 'Enter a valid email address';
              }
              return null;
              },
              decoration: InputDecoration(
                
                hintText: 'Email',
                contentPadding: EdgeInsets.all(20),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                  
                    color: Colors.grey.shade700
                  )
                )
              ),
            ),
                                  SizedBox(height: 50,),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 182, 13, 13),
                          shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                         minimumSize: Size(double.infinity, 65)
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Code Sent to Mail'))
                            );
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> RecoveryScreen()));

                            
                          }
                        },
                        child: Text(
                          'Send Code',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
            ],
           ))
          ],
        ),
      ),
    );
  }
}
