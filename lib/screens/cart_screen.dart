import 'package:ecommerce/Popup/button_modal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<String> productImages = [
    'assets/image1.jpg',
    'assets/image2.jpg',
    'assets/image3.jpg',
    'assets/image2.jpg',
  ];
  List<String> productTitles = [
    'Warm Zipper',
    'Knitted Wool',
    'Zipper Win',
    'Child Win',
  ];
  List prices = ['\$300', '\$650', '\$50', '\$100'];
  List reviews = ['54', '120', '542', '49'];
  @override
  Widget build(BuildContext context) {
    bool checkboxChange = true;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, color: Colors.black),
        title: Text(
          'Cart',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 20),
        child: Padding(
          padding: EdgeInsetsGeometry.all(20),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 30),
                //  height: 400,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: productImages.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      margin: EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Checkbox(
                            splashRadius: 20,
                            activeColor: Color.fromARGB(255, 182, 13, 13),

                            value: checkboxChange,
                            onChanged: (val) {
                              setState(() {
                                checkboxChange = !checkboxChange;
                              });
                            },
                          ),
                          Container(
                            height: 100,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(productImages[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                productTitles[index],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Hooded Jackets',
                                style: TextStyle(color: Colors.grey.shade500),
                              ),
                              SizedBox(height: 5),

                              Text(
                                prices[index],
                                style: TextStyle(
                                  fontSize: 19,
                                  color: Color.fromARGB(255, 182, 13, 13),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(CupertinoIcons.minus, color: Colors.green),
                              SizedBox(width: 5),

                              Text(
                                '1',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(width: 5),
                              Icon(
                                CupertinoIcons.plus,
                                color: Color.fromARGB(255, 182, 13, 13),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Select All',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Checkbox(value: false, onChanged: (val) {}),
                ],
              ),
              SizedBox(height: 7),
              Divider(color: Colors.grey, thickness: 1),
              SizedBox(height: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Payment',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '\$300.00',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 182, 13, 13),
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50,),
              ButtonModal(bgColor:  Color.fromARGB(255, 182, 13, 13),
               containerWidth: double.infinity, itext: 'Checkout')

            ],
          ),
        ),
      ),
    );
  }
}
