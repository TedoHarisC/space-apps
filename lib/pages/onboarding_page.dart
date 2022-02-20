import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: CarouselSlider(
              items: [
                Column(
                  children: [
                    SizedBox(height: 100),
                    Image.asset(
                      'assets/image_onboarding1.png',
                      width: double.infinity,
                    ),
                    SizedBox(height: 127),
                    Text(
                      'Buy Furniture Easily',
                      style: blackTextStyle.copyWith(
                        fontSize: 26,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et. Sunt qui esse',
                      style: greyTextStyle.copyWith(
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ],
              options: CarouselOptions(
                height: double.infinity,
                viewportFraction: 1,
                enableInfiniteScroll: false,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'SKIP',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kBlackColor,
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kLineDarkColor,
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kLineDarkColor,
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'NEXT',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 29),
        ],
      ),
    );
  }
}
