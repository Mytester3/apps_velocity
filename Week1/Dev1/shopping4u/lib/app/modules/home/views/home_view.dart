import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:shopping4u/app/modules/home/controllers/home_controller.dart';

import '../../../common/values/constants.dart';
import '../components/home_body.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const HomeBody(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.help),
        color: Colors.black45,
        onPressed: () {
          Get.bottomSheet(
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.only(top: kToolbarHeight),
              child: ListView(
                children: [
                  IconButton(
                    alignment: Alignment.topLeft,
                      onPressed: () => Get.back(),
                      icon: Icon(Icons.close)),
                  Text(
                    'Guideline',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  const Text(
                    """
Welcome to our Zodiac Explorer app, your personalized guide to unraveling the mysteries of the 12 Chinese zodiac signs! Whether you're a seasoned astrologer or just curious about the traits associated with your birth year, our app is designed to make the exploration of each zodiac sign an enlightening and enjoyable experience.

Are you eager to delve into the characteristics that define your personality based on your Chinese zodiac sign? Look no further! Our app provides in-depth insights into the strengths, weaknesses, and unique qualities associated with each sign. Discover the traits that shape your approach to life, work, and relationships, offering a deeper understanding of yourself and those around you.

Navigating through the app is a breeze, with user-friendly interfaces and interactive features that cater to all levels of interest. Whether you're a casual browser or a dedicated enthusiast, our app accommodates your curiosity. Uncover the significance of your zodiac sign in the Chinese calendar, explore compatibility with other signs, and gain valuable knowledge to enhance your daily interactions.

As you engage with the app, you'll find a wealth of information presented in a visually appealing and accessible manner. From daily horoscopes to personalized insights based on your birth year, Zodiac Explorer is your go-to companion for all things related to the Chinese zodiac.

Whether you seek entertainment, self-discovery, or a fun way to connect with friends and family, our app caters to your needs. Join a community of like-minded individuals on a journey of exploration and enlightenment. Embrace the wisdom of the zodiac and let the stars guide you on your path to self-discovery.""",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            isScrollControlled: true,
            useRootNavigator: true,
          );
        },
      ),
    );
  }
}
