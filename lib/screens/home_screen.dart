import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:introduction_screen/introduction_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final introkey = GlobalKey<IntroductionScreenState>();
  @override
  Widget build(BuildContext context) {
    final pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
      bodyTextStyle: TextStyle(fontSize: 19),
      bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );
    return Container(
      padding: EdgeInsets.only(top: 50),
      child: IntroductionScreen(
        key: introkey,
        globalBackgroundColor: Colors.white,
        pages: [
          PageViewModel(
            title: 'Shop Now',
            body:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
            image: SvgPicture.asset('assets/splash1.svg', width: 300,),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: 'Big Discount',
            body:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
            image: SvgPicture.asset('assets/splash2.svg', width: 300,),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: 'Free Delivery',
            body:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
            image: SvgPicture.asset('assets/splash3.svg', width: 300,),
            decoration: pageDecoration,
            footer:Padding(padding: EdgeInsetsGeometry.fromLTRB(15, 50, 15, 0), 
            child: ElevatedButton(onPressed: (){},
            child: Text('Lets Shop', style: TextStyle(fontSize: 18, color: Colors.white),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 182, 13, 13),
              minimumSize: Size.fromHeight(55),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(8)
              )
            ),
            
            ),)
          ),
        ],
        showDoneButton: true,
        showSkipButton: false,
        showBackButton: true,
        onDone: (){},
        back: Text(
          'Back',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(255, 182, 13, 13),
          ),
        ),
          next: Text(
          'Next',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(255, 182, 13, 13),
          ),
        ),
         done: Text(
          'Done',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(255, 182, 13, 13),
          ),
        ),
      dotsDecorator: DotsDecorator(
        size: Size.square(10),
        activeSize: Size(20, 10),
        activeColor: Color.fromARGB(255, 182, 13, 13),
        color: Colors.black26,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(25)
        )
      ),
      ),
    );
  }
}
