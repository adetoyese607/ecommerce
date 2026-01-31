import 'package:ecommerce/Popup/product_details_popup.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProducctScreen extends StatefulWidget {
  const ProducctScreen({super.key});

  @override
  State<ProducctScreen> createState() => _ProducctScreenState();
}

class _ProducctScreenState extends State<ProducctScreen> {
  final List<String> _image = [
    'assets/image1.jpg',
    'assets/image2.jpg',
    'assets/image3.jpg',
    'assets/splash2.svg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // color: Colors.red,
                height: 500,

                width: double.infinity,
                child: FanCarouselImageSlider.sliderType1(
                  imagesLink: _image,
                  isAssets: true,
                  sliderHeight: 480,

                  expandedCloseBtnAlign: Alignment.topRight,
                  // autoPlay: true,
                  expandedCloseChild: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                    child: Icon(Icons.clear, color: Colors.red),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Warm Zipper',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Hooded Jacket',
                        style: TextStyle(
                          // fontSize: 26,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '\$300.00',
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.red.shade600,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerLeft   ,
                child: RatingBar.builder(
                  itemPadding: EdgeInsetsGeometry.all(4),
                  itemSize: 24,
                  initialRating: 3.5,
                  allowHalfRating: true,
                  itemBuilder: (context, _) {
                    return Icon(Icons.star, color: Colors.amber);
                  },
                  onRatingUpdate: (rating) {},
                ),
              ),
              SizedBox(height: 10,),
              Text('Cool, windy weather is on its way. Send him out the door in a jacket he want to wear. Warm Zooper Hooded Jackets.',
              style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle
,                  color: Colors.grey.shade300
                ),
                child: Icon(Icons.shopping_cart, color: Colors.red.shade600,),
              ),
              ProductDetailsPopup()
              ],)
            ],
          ),
        ),
      ),
    );
  }
}
