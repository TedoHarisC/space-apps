import 'package:flutter/material.dart';
import 'package:space/theme.dart';
import 'package:space/widgets/recomendation_item.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteGreyColor,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 70),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: kWhiteColor,
          elevation: 0,
          title: Row(
            children: [
              Icon(
                Icons.chevron_left,
                color: kBlackColor,
              ),
              SizedBox(width: 18),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: kWhiteGreyColor,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          textInputAction: TextInputAction.go,
                          onFieldSubmitted: (value) {
                            Navigator.pushNamed(context, '/search-result');
                          },
                          decoration: InputDecoration.collapsed(
                            hintText: 'Search furniture',
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.close,
                        color: kGreyColor,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          SizedBox(height: 41),
          Text(
            'Recomendation',
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
            ),
          ),
          SizedBox(height: 20),
          RecomendationItem(
            imageUrl: 'assets/image_product_list1.png',
            title: 'Poan Chair',
            price: 34,
          ),
          RecomendationItem(
            imageUrl: 'assets/image_product_list2.png',
            title: 'Poan Chair',
            price: 20,
          ),
          RecomendationItem(
            imageUrl: 'assets/image_product_list3.png',
            title: 'Poan Chair',
            price: 28,
          ),
          RecomendationItem(
            imageUrl: 'assets/image_product_list4.png',
            title: 'Poan Chair',
            price: 50,
          ),
        ],
      ),
    );
  }
}
