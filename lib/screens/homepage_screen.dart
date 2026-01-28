// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  List<String> tabs = ['All', 'Category', 'Top', 'Recommended'];
  List<String> productImages = [
    'assets/image1.jpg',
    'assets/image2.jpg',
    'assets/image3.jpg',
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
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      padding: EdgeInsetsGeometry.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(.4),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color.fromARGB(255, 182, 13, 13),
                          ),
                          // fillColor: Colors.red,
                          hintText: 'Find your Product',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      padding: EdgeInsetsGeometry.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      width: MediaQuery.of(context).size.width / 6,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(.4),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.notifications,
                          color: Color.fromARGB(255, 182, 13, 13),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,

                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 190, 135, 135).withOpacity(.4),
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('assets/logo.png'),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  height: 50,
                  // color: Colors.red,
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: 30),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,

                    itemCount: tabs.length,
                    // shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return FittedBox(
                        child: Container(
                          height: 40,
                          margin: EdgeInsets.all(8),
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          decoration: BoxDecoration(
                            color: Colors.black12.withOpacity(.05),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: FittedBox(
                              child: Text(
                                tabs[index],
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 300,
                  // color: Colors.red,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: productImages.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 200,
                              // width: 200,
                              child: Stack(
                                children: [
                                  AspectRatio(
                                    aspectRatio: 1 / 1.5,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          image: AssetImage(
                                            productImages[index],
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10,
                                    right: 10,

                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                      child: Icon(
                                        Icons.favorite_outlined,
                                        color: Color.fromARGB(255, 182, 13, 13),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              productTitles[index],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 16
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.yellow, size: 18,),
                                Text('(${reviews[index]})'),
                                SizedBox(width: 5,),
                                Text(
                                  prices[index],
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 182, 13, 13),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
