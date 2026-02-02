import 'package:ecommerce/Popup/button_modal.dart';
import 'package:ecommerce/screens/cart_screen.dart';
import 'package:flutter/material.dart';

class ProductDetailsPopup extends StatefulWidget {
  const ProductDetailsPopup({super.key});

  @override
  State<ProductDetailsPopup> createState() => _ProductDetailsPopupState();
}

final iStyle = TextStyle(
  color: Colors.black87,
  fontWeight: FontWeight.w600,
  fontSize: 18,
);
final List _colorList = [Colors.red, Colors.blue, Colors.green, Colors.orange];

class _ProductDetailsPopupState extends State<ProductDetailsPopup> {
 int totalNumber = 1;



  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: EdgeInsetsGeometry.all(30),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Text('Size:', style: iStyle),
                            SizedBox(height: 20),
                            Text('Color:', style: iStyle),
                            SizedBox(height: 20),
                    
                            Text('Total:', style: iStyle),
                          ],
                        ),
                        SizedBox(width: 50),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(width: 10),
                                Text('S', style: iStyle),
                                SizedBox(width: 30),
                                Text('M', style: iStyle),
                                SizedBox(width: 30),
                    
                                Text('L', style: iStyle),
                                SizedBox(width: 30),
                    
                                Text('XL', style: iStyle),
                              ],
                            ),
                    
                            SizedBox(height: 20),
                            Row(
                              children: [
                                for (var i = 0; i < 4; i++)
                                  Container(
                                    margin: EdgeInsets.only(right: 15),
                                    height: 28,
                                    width: 28,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: _colorList[i],
                                    ),
                                  ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Container(
                              // color: Colors.red,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      setState(() {
                                        if (totalNumber >= 0) {
                                          totalNumber--;
                                        }
                                      });
                                    },
                              
                                    child: Text('-', style: iStyle),
                                  ),
                                  SizedBox(width: 10),
                                  Text('$totalNumber', style: iStyle),
                                  SizedBox(width: 10),
                                  TextButton(
                                    onPressed: () {
                                      setState(() {
                                        totalNumber++;
                                      });
                                    },
                              
                                    child: Text('+', style: iStyle),
                                  ),
                                ],
                              ),
                            ),
                            
                          ],
                        ),
                       
                      ],
                    ),
                    SizedBox(height: 30,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                          Text('Total Payment', style: iStyle,),
                          Text('\$40.00', style: TextStyle(fontSize: 20,color: Colors.red.shade600, fontWeight: FontWeight.bold),)
                        ],),
                        SizedBox(height: 20,),
                         InkWell(
                          onTap: (){
                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreen() ));
                          },
                           child: ButtonModal(
                                   bgColor: Colors.red.shade600,
                                   containerWidth: MediaQuery.of(context).size.width ,
                                   itext: 'Checkout',
                                 ),
                         ),
                  ],
                ),
              ),
            );
          },
        );
      },
      child: ButtonModal(
        bgColor: Colors.red.shade600,
        containerWidth: MediaQuery.of(context).size.width / 1.5,
        itext: 'Buy Now',
      ),
    );
  }
}
