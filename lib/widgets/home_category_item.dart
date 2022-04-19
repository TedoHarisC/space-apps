import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:space/theme.dart';

class HomeCategoryItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;

  const HomeCategoryItem({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/category');
      },
      child: Container(
        height: 123,
        width: MediaQuery.of(context).size.width - (2 * 24),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 102,
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 150,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          title,
                          style: blackTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          subtitle,
                          style: greyTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: semiBold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Image.asset(
              imageUrl,
              height: 122,
            ),
          ],
        ),
      ),
    );
  }
}
