import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'controller/home_controller.dart';
import 'styles/app_colors.dart';
import 'styles/font_style.dart';
import 'ui/widgets/custom_card_widget.dart';
import 'ui/widgets/gift_card_label_widget.dart';
import 'ui/widgets/gift_card_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flyn Box',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 16,
            fontWeight: FontWeight.w600,
            height: 20,
            color: Color(0xff222222),
            fontStyle: FontStyle.normal,
          ),
          elevation: 4,
          actionsIconTheme: IconThemeData(
            color: AppColors.blackColor,
            size: 24.0,
          ),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Account",
            style: TextStyle(color: Color(0xff222222)),
          ),
          actions: const [
            Icon(Icons.notifications_outlined),
            SizedBox(
              width: 20,
            ),
            Icon(Icons.search_outlined),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        bottomNavigationBar: Obx(() => BottomNavigationBar(
              selectedIconTheme: const IconThemeData(
                color: AppColors.lightGreen,
                size: 20.0,
              ),
              showSelectedLabels: true,
              showUnselectedLabels: true,
              unselectedIconTheme: const IconThemeData(
                color: AppColors.blackColor,
                size: 20.0,
              ),
              selectedLabelStyle: AppTextStyle.labelStyle,
              unselectedLabelStyle: AppTextStyle.labelStyle,
              currentIndex: controller.currentIndex,
              onTap: (value) {
                controller.currentIndex = value;
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.groups),
                  label: "Referal",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.card_giftcard_outlined),
                  label: "Gifts",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag_outlined),
                  label: "Cart",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline),
                  label: "Account",
                ),
              ],
            )),
        body: SizedBox(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: Get.width,
                  height: 80,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60, vertical: 20),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            GiftCardWidget(
                              linearGradient: LinearGradient(
                                colors: [
                                  AppColors.lightBlueColor,
                                  AppColors.blueShadColor,
                                  AppColors.blueColor,
                                ],
                              ),
                              path: "assets/images/gift_box1.png",
                            ),
                            GiftCardLabelWidget(
                              label: "99",
                            ),
                          ],
                        ),
                        Expanded(
                            child: SvgPicture.asset(
                                "assets/icons/arrow icon.svg")),
                        Column(
                          children: const [
                            GiftCardWidget(
                              linearGradient: LinearGradient(
                                colors: [
                                  AppColors.greyLightLinear,
                                  AppColors.greyShadLinear,
                                  AppColors.greyLinear,
                                ],
                              ),
                              path: 'assets/images/gift_box2.png',
                            ),
                            GiftCardLabelWidget(
                              label: "199",
                            ),
                          ],
                        ),
                        Expanded(
                            child: SvgPicture.asset(
                                "assets/icons/arrow icon.svg")),
                        Column(
                          children: const [
                            GiftCardWidget(
                              linearGradient: LinearGradient(
                                colors: [
                                  AppColors.yellowLightLinear,
                                  AppColors.yellowShadLinear,
                                  AppColors.yellowLinear,
                                ],
                              ),
                              path: 'assets/images/gift_box3.png',
                            ),
                            GiftCardLabelWidget(
                              label: "299",
                            ),
                          ],
                        ),
                        Expanded(
                            child: SvgPicture.asset(
                                "assets/icons/arrow icon.svg")),
                        Column(
                          children: const [
                            GiftCardWidget(
                              linearGradient: LinearGradient(
                                colors: [
                                  AppColors.purpleLightLinear,
                                  AppColors.purpleShadLinear,
                                  AppColors.purpleLinear,
                                ],
                              ),
                              path: 'assets/images/gift_box4.png',
                            ),
                            GiftCardLabelWidget(
                              label: "599",
                            ),
                          ],
                        ),
                        Expanded(
                            child: SvgPicture.asset(
                                "assets/icons/arrow icon.svg")),
                        Column(
                          children: const [
                            GiftCardWidget(
                              linearGradient: LinearGradient(
                                colors: [
                                  Color(0xffFFFC45),
                                  Color(0xffFFB858),
                                  Color(0xffFF000B),
                                  Color(0xffE545FF),
                                  Color(0xff96FF61),
                                  Color(0xff6FBAFF),
                                  Color(0xff5381BA),
                                ],
                              ),
                              path: 'assets/images/gift_box5.png',
                            ),
                            GiftCardLabelWidget(
                              label: "999",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: Get.width,
                  height: 134,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            'assets/images/my_image.png')),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Alex Higgins",
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.blackColor,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'ID: 405413546',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        fontFamily: "Montserrat",
                                        color: AppColors.blackColor,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              height: 24,
                              child: Row(
                                children: [
                                  SvgPicture.asset('assets/icons/Out.svg'),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  SvgPicture.asset('assets/icons/barcode.svg'),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  SvgPicture.asset('assets/icons/User_add.svg'),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  SvgPicture.asset('assets/icons/Subtract.svg'),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: 12,
                              child: Row(
                                children: const [
                                  Text(
                                    "Check in",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.blackColor,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 8,
                                    color: AppColors.blackColor,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              height: 24,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 21,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                            bottom: 0,
                                            left: 0,
                                            child: Image.asset(
                                                'assets/images/image 41.png')),
                                        const Positioned(
                                            top: 0,
                                            right: 0,
                                            child: Text(
                                              "210",
                                              style: AppTextStyle.fontSize6Lato,
                                            )),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 21,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                            bottom: 0,
                                            left: 0,
                                            child: Image.asset(
                                                'assets/images/image 43.png')),
                                        const Positioned(
                                            top: 0,
                                            right: 0,
                                            child: Text(
                                              "123",
                                              style: AppTextStyle.fontSize6Lato,
                                            )),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 21,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                            bottom: 0,
                                            left: 0,
                                            child: Image.asset(
                                                'assets/images/image 47.png')),
                                        const Positioned(
                                            top: 0,
                                            right: 0,
                                            child: Text(
                                              "98",
                                              style: AppTextStyle.fontSize6Lato,
                                            )),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 21,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                            bottom: 0,
                                            left: 0,
                                            child: Image.asset(
                                                'assets/images/image 44.png')),
                                        const Positioned(
                                            top: 0,
                                            right: 0,
                                            child: Text(
                                              "75",
                                              style: AppTextStyle.fontSize6Lato,
                                            )),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 21,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                            bottom: 0,
                                            left: 0,
                                            child: Image.asset(
                                                'assets/images/image 46.png')),
                                        const Positioned(
                                            top: 0,
                                            right: 0,
                                            child: Text(
                                              "50",
                                              style: AppTextStyle.fontSize6Lato,
                                            )),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 21,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                            bottom: 0,
                                            left: 0,
                                            child: Image.asset(
                                                'assets/images/image 48.png')),
                                        const Positioned(
                                            top: 0,
                                            right: 0,
                                            child: Text(
                                              "25",
                                              style: AppTextStyle.fontSize6Lato,
                                            )),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 21,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                            bottom: 0,
                                            left: 0,
                                            child: Image.asset(
                                                'assets/images/image 45 (1).png')),
                                        const Positioned(
                                            top: 0,
                                            right: 0,
                                            child: Text(
                                              "11",
                                              style: AppTextStyle.fontSize6Lato,
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const SizedBox(
                              height: 20,
                              child: Text(
                                "AED 2,500.00",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  fontFamily: 'Lato',
                                  fontStyle: FontStyle.normal,
                                  color: AppColors.blackColor,
                                ),
                                textAlign: TextAlign.right,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: 12,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Text(
                                    "Credit Balance Details",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.blackColor,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 8,
                                    color: AppColors.blackColor,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: Get.width,
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: CustomCardWidget(
                      child: Row(
                        children: [
                          Container(
                            height: 32,
                            width: 86.21,
                            decoration: BoxDecoration(
                              color: const Color(0xffFFFFFF),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Row(
                              children: [
                                SvgPicture.asset('assets/icons/heart.svg'),
                                const Text(
                                  "Wishlist",
                                  style: AppTextStyle.labelStyle,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 32,
                            decoration: BoxDecoration(
                              color: AppColors.grey,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Row(
                              children: [
                                SvgPicture.asset('assets/icons/clock.svg'),
                                const Text(
                                  "History",
                                  style: AppTextStyle.labelStyle,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 32,
                            width: 86.21,
                            decoration: BoxDecoration(
                              color: AppColors.grey,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Row(
                              children: [
                                SvgPicture.asset('assets/icons/gift.svg'),
                                const Text(
                                  "Gift Card",
                                  style: AppTextStyle.labelStyle,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 32,
                            width: 86.21,
                            decoration: BoxDecoration(
                              color: AppColors.grey,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Row(
                              children: [
                                SvgPicture.asset('assets/icons/currency.svg'),
                                const Text(
                                  "My Credits",
                                  style: AppTextStyle.labelStyle,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: CustomCardWidget(
                    height: 209,
                    width: Get.width,
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Orders",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Lato",
                                  fontStyle: FontStyle.normal,
                                  color: AppColors.blackColor,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "View All",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.blackColor,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 8,
                                      color: AppColors.blackColor,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          color: AppColors.blackColor,
                          height: 0.5,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 10,
                          ),
                          child: Container(
                            width: Get.width,
                            height: 69,
                            decoration: BoxDecoration(
                              color: const Color(0xffFFFFFF),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              children: [

                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
