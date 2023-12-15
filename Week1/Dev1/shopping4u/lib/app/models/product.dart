import 'dart:ui';

import '../common/values/app_images.dart';

class Product {
  final String image, title, description, price;
  final int size, id;
  final Color color;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product
    (
      id: 1,
      title: "Rat",
      price: 'Water',
      size: 12,
      description:
      'People born in the Year of the Rat are known for their intelligence, resourcefulness, and adaptability. They are quick-witted, charming, and have a keen sense of observation. Rats are natural leaders and are often successful in their endeavors due to their determination and hard work.',
      image: AppImages.chuot,
      color: Color(0xFFB72025)),
  Product(
      id: 2,
      title: "Ox",
      price: 'Water',
      size: 8,
      description:
      'The Ox is a symbol of diligence, reliability, and strength. Those born under this sign are known for their patience and methodical approach to tasks. They are dependable and trustworthy, making them valuable team players. Ox individuals are hardworking and persistent, achieving success through their unwavering dedication.',
      image: AppImages.trau,
      color: Color(0xFFB72025)),
  Product(
      id: 3,
      title: "Tiger",
      price: 'Fire',
      size: 10,
      description:
      'Tigers are known for their courage, passion, and competitive spirit. Born leaders, they exude confidence and charisma. Tigers are adventurous and love challenges, often embracing opportunities that others may shy away from. Despite their bold nature, they are also compassionate and protective of their loved ones.',
      image: AppImages.ho,
      color: Color(0xFFB72025)),
  Product(
      id: 4,
      title: "Rabbit",
      price: 'Meta',
      size: 11,
      description:
      'People born in the Year of the Rabbit are gentle, kind-hearted, and diplomatic. They possess a refined taste and are often admired for their elegance and grace. Rabbits are intuitive and compassionate, making them excellent listeners and supportive friends. They value harmony and avoid conflict whenever possible.',
      image: AppImages.meo,
      color: Color(0xFFB72025)),
  Product(
      id: 5,
      title: "Dragon",
      price: 'Earth',
      size: 12,
      description:
      'Dragons are powerful, ambitious, and charismatic individuals. They are natural-born leaders with a strong desire for success. Dragons are known for their creativity, enthusiasm, and determination. While their confidence may border on arrogance, their charm and generosity often win over others.',
      image: AppImages.rong,
      color: Color(0xFFB72025)),
  Product(
    id: 6,
    title: "Snake",
    price: 'Wood',
    size: 12,
    description:
    'The Snake is characterized by its intelligence, intuition, and sophistication. Those born under this sign are often mysterious and possess a keen analytical mind. Snakes are strategic and patient, navigating challenges with grace. They are also known for their ability to shed the old and embrace transformation.',
    image: AppImages.ran,
    color: Color(0xFFB8150A),
  ),
  Product(
      id: 7,
      title: "Horse",
      price: 'Wood',
      size: 12,
      description:
      'Individuals born in the Year of the Horse are energetic, free-spirited, and adventurous. They are natural risk-takers, thriving on excitement and change. Horses are known for their independence and resilience, tackling challenges with enthusiasm. They have a magnetic personality that draws people to them.',
      image: AppImages.ngua,
      color: Color(0xFFB72025)),
  Product(
      id: 8,
      title: "Goat",
      price: 'Wood',
      size: 12,
      description:
      'Goats are gentle, compassionate, and artistic individuals. They have a strong appreciation for beauty and harmony. People born under this sign are often creative and possess a nurturing nature. Goats value relationships and are known for their loyalty and kindness to those they care about.',
      image: AppImages.de,
      color: Color(0xFFB72025)),
  Product(
      id: 9,
      title: "Monkey",
      price: 'Fire',
      size: 12,
      description:
      'The Monkey is witty, clever, and playful. Known for their intelligence and resourcefulness, Monkeys excel in problem-solving and adapting to new situations. They have a charming personality and a natural ability to make others laugh. While they may be mischievous, their quick thinking often gets them out of trouble.',
      image: AppImages.khi,
      color: Color(0xFFB72025)),
  Product(
      id: 10,
      title: "Pig",
      price: 'Meta',
      size: 12,
      description:
      'People born in the Year of the Pig are kind, compassionate, and easygoing. They have a generous and nurturing nature, always willing to lend a helping hand. Pigs enjoy the finer things in life and often have a love for art and culture. While they may be perceived as naive, their sincerity and warmth make them well-loved by others.',
      image: AppImages.heo,
      color: Color(0xFFB72025)),
  Product(
      id: 11,
      title: "Rooster",
      price: 'Earth',
      size: 12,
      description:
      'Roosters are confident, hardworking, and detail-oriented individuals. They have a strong sense of responsibility and take pride in their work. Roosters are known for their punctuality and organizational skills. Despite their sometimes bold and outspoken nature, they are also diligent and dedicated team players.',
      image: AppImages.ga,
      color: Color(0xFFB72025)),
  Product(
      id: 12,
      title: "Dog",
      price: 'Earth',
      size: 12,
      description:
      'Dogs are loyal, honest, and compassionate individuals. They are known for their sense of justice and willingness to help others. Dogs are reliable and trustworthy, making them great friends and companions. While they may be perceived as serious, they also have a playful and protective side.',
      image: AppImages.cho,
      color: Color(0xFFB72025)),
];
