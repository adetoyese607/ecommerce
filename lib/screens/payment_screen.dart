import 'package:ecommerce/Popup/button_modal.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int _type = 1;
  void _handleRadio(Object? e) {
    setState(() {
      _type = e as int;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, color: Colors.black),
        title: Text(
          'Payment Method',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 60),
              Container(
                padding: EdgeInsets.all(10),
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  // color: Colors.red,
                  borderRadius: BorderRadius.circular(5),
                  border: _type == 1
                      ? Border.all(
                          width: 2,
                          color: Color.fromARGB(255, 182, 13, 13),
                        )
                      : Border.all(color: Colors.grey),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: 1,
                          groupValue: _type,
                          onChanged: _handleRadio,
                          activeColor: Color.fromARGB(255, 182, 13, 13),
                        ),
                        Text(
                          'Amazon Pay',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Image.asset('assets/amazon.png', width: 70, height: 70),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(10),
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  // color: Colors.red,
                  borderRadius: BorderRadius.circular(5),
                  border: _type == 1
                      ? Border.all(
                          width: 2,
                          color: Color.fromARGB(255, 182, 13, 13),
                        )
                      : Border.all(color: Colors.grey),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: 2,
                          groupValue: _type,
                          onChanged: _handleRadio,
                          activeColor: Color.fromARGB(255, 182, 13, 13),
                        ),
                        Text(
                          'Credit Card',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Image.asset('assets/visa.png', width: 70, height: 70),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(10),
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  // color: Colors.red,
                  borderRadius: BorderRadius.circular(5),
                  border: _type == 1
                      ? Border.all(
                          width: 2,
                          color: Color.fromARGB(255, 182, 13, 13),
                        )
                      : Border.all(color: Colors.grey),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: 3,
                          groupValue: _type,
                          onChanged: _handleRadio,
                          // activeColor: Color.fromARGB(255, 182, 13, 13),
                        ),
                        Text(
                          'Paypal',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Image.asset('assets/paypal.png', width: 70, height: 70),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(10),
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  // color: Colors.red,
                  borderRadius: BorderRadius.circular(5),
                  border: _type == 1
                      ? Border.all(
                          width: 2,
                          color: Color.fromARGB(255, 182, 13, 13),
                        )
                      : Border.all(color: Colors.grey),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: 4,
                          groupValue: _type,
                          onChanged: _handleRadio,
                          activeColor: Color.fromARGB(255, 182, 13, 13),
                        ),
                        Text(
                          'Google Pay',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Image.asset('assets/amazon.png', width: 70, height: 70),
                  ],
                ),
              ),
SizedBox(height: 60,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Sub-Total',
                   style: TextStyle(color: Colors.grey.shade500,
                    fontSize: 16, fontWeight: FontWeight.bold),),
                       Text('\$300.50',
                   style: TextStyle(color: Colors.grey.shade800,
                    fontSize: 16, fontWeight: FontWeight.bold),),
                ],
              ),
               SizedBox(height: 20,),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Shipping Fee',
                   style: TextStyle(color: Colors.grey.shade500,
                    fontSize: 16, fontWeight: FontWeight.bold),),
                      
                       Text('\$15.00',
                   style: TextStyle(color: Colors.grey.shade800,
                    fontSize: 16, fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: 20,),
              Divider(
                color: Colors.grey.shade600,
              ),
               SizedBox(height: 20,),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total Payment',
                   style: TextStyle(color: Colors.grey.shade800,
                    fontSize: 16, fontWeight: FontWeight.bold),),
                      
                       Text('\$380.50',
                   style: TextStyle(color:  Color.fromARGB(255, 182, 13, 13),
                    fontSize: 16, fontWeight: FontWeight.bold),),
                ],
              ),
               SizedBox(height: 60,),

               ButtonModal(bgColor:  Color.fromARGB(255, 182, 13, 13), containerWidth: double.infinity, itext: 'Confirm Payment')
            ],
          ),
        ),
      ),
    );
  }
}
