import 'package:flutter/material.dart';
import 'package:space/widgets/product_grid_item.dart';
import 'package:space/widgets/skeleton_item.dart';

import '../theme.dart';
import '../widgets/product_list_item.dart';

class SearchResultPage extends StatefulWidget {
  const SearchResultPage({Key? key}) : super(key: key);

  @override
  State<SearchResultPage> createState() => _SearchResultPageState();
}

class _SearchResultPageState extends State<SearchResultPage> {
  bool isLoading = true;
  bool isShowGrid = true;

  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 110),
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: kWhiteColor,
            elevation: 0,
            title: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.chevron_left,
                    color: kBlackColor,
                  ),
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
                SizedBox(width: 18),
                Image.asset(
                  'assets/icon_filter.png',
                  width: 24,
                ),
              ],
            ),
            bottom: TabBar(
              indicatorColor: kBlackColor,
              labelColor: kBlackColor,
              isScrollable: true,
              tabs: [
                Tab(
                  text: 'Chair',
                ),
                Tab(
                  text: 'Table',
                ),
                Tab(
                  text: 'Accessories',
                ),
                Tab(
                  text: 'Living Room',
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            buildBody(),
            buildBody(),
            buildBody(),
            buildBody(),
          ],
        ),
      ),
    );
  }

  Widget buildBody() {
    return ListView(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
      ),
      children: [
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Result for : Poang',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isShowGrid = !isShowGrid;
                });
              },
              child: isShowGrid
                  ? Image.asset(
                      'assets/icon_list.png',
                      width: 24,
                    )
                  : Image.asset(
                      'assets/icon_grid.png',
                      width: 24,
                    ),
            ),
          ],
        ),
        SizedBox(height: 20),
        isLoading
            ? buildLoading()
            : isShowGrid
                ? buildGrid()
                : buildList(),
        //buildGrid(),
        //buildList(),
      ],
    );
  }

  Widget buildLoading() {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 18,
      runSpacing: 18,
      children: [
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
      ],
    );
  }

  Widget buildGrid() {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 18,
      runSpacing: 18,
      children: [
        ProductGridItem(
          imageUrl: 'assets/image_product_grid1.png',
          title: 'Poan Chair',
          price: 34,
          isWishlist: false,
        ),
        ProductGridItem(
          imageUrl: 'assets/image_product_grid2.png',
          title: 'Poan Chair',
          price: 34,
          isWishlist: true,
        ),
        ProductGridItem(
          imageUrl: 'assets/image_product_grid3.png',
          title: 'Poan Chair',
          price: 34,
          isWishlist: false,
        ),
        ProductGridItem(
          imageUrl: 'assets/image_product_grid4.png',
          title: 'Poan Chair',
          price: 34,
          isWishlist: false,
        ),
        ProductGridItem(
          imageUrl: 'assets/image_product_grid1.png',
          title: 'Poan Chair',
          price: 34,
          isWishlist: false,
        ),
        ProductGridItem(
          imageUrl: 'assets/image_product_grid2.png',
          title: 'Poan Chair',
          price: 34,
          isWishlist: true,
        ),
        ProductGridItem(
          imageUrl: 'assets/image_product_grid3.png',
          title: 'Poan Chair',
          price: 34,
          isWishlist: false,
        ),
        ProductGridItem(
          imageUrl: 'assets/image_product_grid4.png',
          title: 'Poan Chair',
          price: 34,
          isWishlist: false,
        ),
      ],
    );
  }

  Widget buildList() {
    return Column(
      children: [
        ProductListItem(
          imageUrl: 'assets/image_product_list1.png',
          title: 'Poan Chair',
          price: 34,
        ),
        ProductListItem(
          imageUrl: 'assets/image_product_list2.png',
          title: 'Poan Chair',
          price: 20,
        ),
        ProductListItem(
          imageUrl: 'assets/image_product_list3.png',
          title: 'Poan Chair',
          price: 28,
        ),
        ProductListItem(
          imageUrl: 'assets/image_product_list4.png',
          title: 'Poan Chair',
          price: 50,
        ),
        ProductListItem(
          imageUrl: 'assets/image_product_list1.png',
          title: 'Poan Chair',
          price: 34,
        ),
        ProductListItem(
          imageUrl: 'assets/image_product_list2.png',
          title: 'Poan Chair',
          price: 20,
        ),
        ProductListItem(
          imageUrl: 'assets/image_product_list3.png',
          title: 'Poan Chair',
          price: 28,
        ),
        ProductListItem(
          imageUrl: 'assets/image_product_list4.png',
          title: 'Poan Chair',
          price: 50,
        ),
      ],
    );
  }
}
