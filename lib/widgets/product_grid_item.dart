import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:space/theme.dart';

class ProductGridItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int price;
  final bool isWishlist;

  const ProductGridItem({
    Key? key,
    required this.title,
    required this.imageUrl,
    required this.price,
    required this.isWishlist,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: (MediaQuery.of(context).size.width - 82) / 2,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imageUrl,
            ),
            SizedBox(height: 20),
            Text(
              title,
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$$price',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                Image.asset(
                  isWishlist
                      ? 'assets/button_wishlist_active.png'
                      : 'assets/button_wishlist.png',
                  width: 44,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
