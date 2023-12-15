import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping4u/app/common/values/constants.dart';
import 'package:shopping4u/app/models/product.dart';
import 'package:shopping4u/app/modules/details/controllers/detail_controller.dart';

class SeeMoreDetailView extends GetView<DetailController> {
  const SeeMoreDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: SafeArea(
        bottom: false,
        minimum: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(bottom: 50),
            child: Text("""
The Vietnamese zodiac, consisting of 12 animal signs, provides a fascinating lens through which to view personality traits, characteristics, and life paths. Each sign reflects a distinct set of qualities and influences the lives of those born under its auspices.

Beginning with the Rat, individuals born in this year are hailed for their sharp minds, resourcefulness, and a penchant for leadership. Rats are agile thinkers, quick on their feet, and possess an unwavering determination that propels them to success. The diligent and dependable Ox, representing strength and reliability, embodies patience and a methodical approach to challenges, making them indispensable team players in various aspects of life.

Tigers, on the other hand, are courageous, passionate, and possess a competitive spirit. Natural-born leaders, Tigers embrace challenges with enthusiasm, blending charisma with a protective nature towards their loved ones. Rabbits, characterized by gentleness and diplomacy, navigate life with elegance and grace. Intuitive and compassionate, Rabbits foster harmony and avoid conflict, earning admiration for their supportive friendships.

The powerful and ambitious Dragon signifies creativity, enthusiasm, and a desire for success. Dragons, while exuding confidence, balance it with generosity and charm. Snakes, known for their intelligence and sophistication, possess a keen analytical mind and the ability to transform, shedding the old to embrace the new.

Horses embody energy, adventure, and resilience. Eager risk-takers, they thrive on excitement and change, drawing others with their magnetic personalities. Goats, gentle and artistic, appreciate beauty and harmony, expressing creativity through their nurturing nature. Monkeys, witty and clever, excel in problem-solving and adaptability, with a mischievous streak complemented by quick thinking.

Roosters, confident and detail-oriented, take pride in their work, demonstrating punctuality and organizational prowess. Dogs, epitomes of loyalty and compassion, are guided by a sense of justice and a willingness to aid others. Finally, Pigs, characterized by kindness and easygoing natures, enjoy life's finer aspects and radiate warmth and sincerity.

In essence, the Chinese zodiac offers a rich tapestry of personalities, each sign contributing unique colors to the canvas of life. Whether one resonates with the industriousness of the Rat, the strength of the Ox, or the adventurous spirit of the Horse, the 12 animal signs weave a story of diversity, resilience, and the beauty of individuality in the collective journey of existence."""),
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new_outlined),
        color: Colors.black45,
        onPressed: () {
          Get.back();
        },
      ),
    );
  }
}
