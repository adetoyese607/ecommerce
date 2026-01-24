import 'package:ecommerce/screens/login_screen.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}
final _formKey = GlobalKey<FormState>();

class _SignupScreenState extends State<SignupScreen> {
  final myPasswordController = TextEditingController();
   final myConfirmPasswordController = TextEditingController();
@override
void dispose() {
  myPasswordController.dispose();
  super.dispose();
}

  bool _obscuretext = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // padding: EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/logo.png'),
              SizedBox(height: 80,),
              Form(
                key: _formKey,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                        TextFormField(
                        validator: (value){
                          if (value == null ||value.isEmpty ) {
                            return 'Please enter your Name';
                          } 
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'Enter Name',
                          contentPadding: EdgeInsets.all(25),
                          prefixIcon: Padding(
                            padding: EdgeInsetsGeometry.only(left: 10),
                            child: Icon(Icons.person),
                          ),

                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 20),
                      
                      TextFormField(
                        validator: (value){
                          if (value == null ||value.isEmpty ) {
                            return 'Please enter your Email';
                          } 
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'Enter Email',
                          contentPadding: EdgeInsets.all(25),
                          prefixIcon: Padding(
                            padding: EdgeInsetsGeometry.only(left: 10),
                            child: Icon(Icons.email),
                          ),

                          border: OutlineInputBorder(),
                        ),
                      ),
                       SizedBox(height: 20),
                        TextFormField(
                        validator: (value){
                          if (value == null ||value.isEmpty ) {
                            return 'Please enter your Number';
                          } 
                          final RegExp numberRegExp = RegExp(r'^-?\d+(\.\d+)?$');
    if (!numberRegExp.hasMatch(value)) {
      return 'Please enter a valid number';
    }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'Enter Number',
                          contentPadding: EdgeInsets.all(25),
                          prefixIcon: Padding(
                            padding: EdgeInsetsGeometry.only(left: 10),
                            child: Icon(Icons.numbers),
                          ),

                          border: OutlineInputBorder(),
                        ),
                      ),
                     
                      SizedBox(height: 20),
                      TextFormField(
                        controller: myPasswordController,
                          validator: (value){
                          if (value == null ||value.isEmpty ) {
                            return 'Please enter your Password';
                          } else if(value.length < 8){
                            return 'Password should be more than 8';
                          }
                        return null;
                        },
                        obscureText: _obscuretext,
                        decoration: InputDecoration(
                          hintText: 'Enter Password',
                          contentPadding: EdgeInsets.all(25),
                          prefixIcon: Padding(
                            padding: EdgeInsetsGeometry.only(left: 10),
                            child: Icon(Icons.lock),
                          ),
                          suffixIcon: Padding(
                            padding: EdgeInsetsGeometry.only(right: 10),
                            child: IconButton(onPressed: (){setState(() {
                              _obscuretext = !_obscuretext;
                            });}, icon:  _obscuretext ?Icon(Icons.visibility_off) : Icon(Icons.visibility),)
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                          SizedBox(height: 20),
                      TextFormField(
                        controller: myConfirmPasswordController,
                          validator: (value){
                         if (value != myPasswordController.text) {
                           return 'Password doesnt Match';
                         }
                         return null;
                        },
                        obscureText: _obscuretext,
                        decoration: InputDecoration(
                          
                          hintText: 'Confirm Password',
                          contentPadding: EdgeInsets.all(25),
                          prefixIcon: Padding(
                            padding: EdgeInsetsGeometry.only(left: 10),
                            child: Icon(Icons.lock),
                          ),
                          suffixIcon: Padding(
                            padding: EdgeInsetsGeometry.only(right: 10),
                            child: IconButton(onPressed: (){setState(() {
                              _obscuretext = !_obscuretext;
                            });}, icon:  _obscuretext ?Icon(Icons.visibility_off) : Icon(Icons.visibility),)
                          ),
                          border: OutlineInputBorder(),
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Sign in Successful'))
                            );
                            
                          }
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already Have an Account?'),
                          // SizedBox(width: 5,),
                       TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen() ));
                       }, child:   Text(
                          'Log In',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 182, 13, 13),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

