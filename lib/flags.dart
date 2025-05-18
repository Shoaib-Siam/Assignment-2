import 'package:flutter/material.dart';
import 'package:assignment2/widgets/flagsCard.dart';

class Flags extends StatefulWidget {
  const Flags({super.key});

  @override
  State<Flags> createState() => _FlagsState();
}

class _FlagsState extends State<Flags> {
  final List<Map<String, String>> flags = [
    {"name": "Argentina", "image": "assets/images/AR.png", "description": "Home of tango and football legends, located in South America."},
    {"name": "Australia", "image": "assets/images/AU.png", "description": "Island nation known for unique wildlife and the Sydney Opera House."},
    {"name": "Bangladesh", "image": "assets/images/BD.png", "description": "Densely populated South Asian country with rich culture and rivers."},
    {"name": "Brazil", "image": "assets/images/BR.png", "description": "Famous for the Amazon rainforest and Carnival festival."},
    {"name": "Canada", "image": "assets/images/CA.png", "description": "Second-largest country known for maple syrup and natural beauty."},
    {"name": "China", "image": "assets/images/CN.png", "description": "World's most populous nation with ancient history and innovation."},
    {"name": "France", "image": "assets/images/FR.png", "description": "Renowned for art, fashion, and the Eiffel Tower."},
    {"name": "Germany", "image": "assets/images/DE.png", "description": "European powerhouse known for engineering and Oktoberfest."},
    {"name": "India", "image": "assets/images/IN.png", "description": "Diverse culture and birthplace of major religions and traditions."},
    {"name": "Italy", "image": "assets/images/IT.png", "description": "Famous for Roman history, pasta, and art masterpieces."},
    {"name": "Japan", "image": "assets/images/JP.png", "description": "Land of the rising sun, known for technology and traditions."},
    {"name": "Mexico", "image": "assets/images/MX.png", "description": "Known for vibrant culture, ancient ruins, and spicy cuisine."},
    {"name": "Russia", "image": "assets/images/RU.png", "description": "World's largest country, spanning Europe and Asia."},
    {"name": "Saudi Arabia", "image": "assets/images/SA.png", "description": "Birthplace of Islam and home to vast desert landscapes."},
    {"name": "South Africa", "image": "assets/images/ZA.png", "description": "Diverse landscapes and Nelson Mandela’s homeland."},
    {"name": "South Korea", "image": "assets/images/KR.png", "description": "Technologically advanced and famous for K-pop culture."},
    {"name": "Spain", "image": "assets/images/ES.png", "description": "Rich in history, flamenco music, and Mediterranean charm."},
    {"name": "United Arab Emirates", "image": "assets/images/UAE.png", "description": "Home to Dubai’s skyscrapers and modern architecture."},
    {"name": "United Kingdom", "image": "assets/images/UK.png", "description": "Land of the Queen, Shakespeare, and British traditions."},
    {"name": "United States", "image": "assets/images/US.png", "description": "A global superpower with diverse landscapes and cultures."}
  ];

  int getCrossAxisCount(double width) {
    if (width < 768) return 2;
    if (width < 1024) return 3;
    return 4;
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final crossAxisCount = getCrossAxisCount(screenWidth);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Flags"),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: flags.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) {
          final country = flags[index];
          return FlagsCard(
            name: country['name']!,
            imagePath: country['image']!,
            description: country['description']!,
          );
        },
      ),
    );
  }
}
