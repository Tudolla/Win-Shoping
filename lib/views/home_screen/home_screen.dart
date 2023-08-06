import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/widgets_common/home_button.dart';
import 'package:flutter/material.dart';
import 'package:emart_app/consts/consts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 58,
              color: lightGrey,
              child: TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: whiteColor,
                  hintText: searchAnythin,
                  hintStyle: TextStyle(color: textfieldGrey),
                ),
              ),
            ),
            //swiper
            10.heightBox,
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    VxSwiper.builder(
                        aspectRatio: 16 / 10,
                        autoPlay: true,
                        height: 120,
                        enlargeCenterPage: true,
                        itemCount: slidersList.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            slidersList[index],
                            fit: BoxFit.fill,
                          )
                              .box
                              .rounded
                              .clip(Clip.antiAlias)
                              .margin(
                                  const EdgeInsets.symmetric(horizontal: 10))
                              .make();
                        }),
                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                          2,
                          (index) => homeButton(
                                height: context.screenHeight * 0.15,
                                width: context.screenWidth / 2.6,
                                icon: index == 0 ? icTodaysDeal : icFlashDeal,
                                title: index == 0 ? todayDeal : flashsale,
                              )),
                    ),

                    // swiper 2
                    10.heightBox,
                    VxSwiper.builder(
                        aspectRatio: 16 / 10,
                        autoPlay: true,
                        height: 120,
                        enlargeCenterPage: true,
                        itemCount: secondsList.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            secondsList[index],
                            fit: BoxFit.fill,
                          )
                              .box
                              .rounded
                              .clip(Clip.antiAlias)
                              .margin(
                                  const EdgeInsets.symmetric(horizontal: 10))
                              .make();
                        }),

                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                          3,
                          (index) => homeButton(
                                height: context.screenHeight * 0.15,
                                width: context.screenWidth / 3.5,
                                icon: index == 0
                                    ? icTopCategories
                                    : index == 1
                                        ? icBrands
                                        : icTopSeller,
                                title: index == 0
                                    ? topCategory
                                    : index == 1
                                        ? brand
                                        : topSeller,
                              )),
                    ),

                    10.heightBox,

                    Align(
                      alignment: Alignment.centerLeft,
                      child: featureCategories.text
                          .color(darkFontGrey)
                          .size(18)
                          .fontFamily(semibold)
                          .make(),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: featureCategories.text
                          .color(darkFontGrey)
                          .size(18)
                          .fontFamily(semibold)
                          .make(),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: featureCategories.text
                          .color(darkFontGrey)
                          .size(18)
                          .fontFamily(semibold)
                          .make(),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
