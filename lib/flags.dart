import 'package:flutter/material.dart';
import 'package:assignment2/widgets/flagsCard.dart';

class Flags extends StatefulWidget {
  const Flags({super.key});

  @override
  State<Flags> createState() => _FlagsState();
}

class _FlagsState extends State<Flags> {
  final List<Map<String, String>> flags = [
    {
      "name": "Argentina",
      "population": "45M",
      "image": "assets/images/AR.png",
      "description": "Home of tango and football legends, located in South America."
    },
    {
      "name": "Australia",
      "population": "26M",
      "image": "assets/images/AU.png",
      "description": "Island nation known for unique wildlife and the Sydney Opera House."
    },
    {
      "name": "Bangladesh",
      "population": "170M",
      "image": "assets/images/BD.png",
      "description": "Densely populated South Asian country with rich culture and rivers."
    },
    {
      "name": "Brazil",
      "population": "214M",
      "image": "assets/images/BR.png",
      "description": "Famous for the Amazon rainforest and Carnival festival."
    },
    {
      "name": "Canada",
      "population": "39M",
      "image": "assets/images/CA.png",
      "description": "Second-largest country known for maple syrup and natural beauty."
    },
    {
      "name": "China",
      "population": "1.41B",
      "image": "assets/images/CN.png",
      "description": "World's most populous nation with ancient history and innovation."
    },
    {
      "name": "France",
      "population": "68M",
      "image": "assets/images/FR.png",
      "description": "Renowned for art, fashion, and the Eiffel Tower."
    },
    {
      "name": "Germany",
      "population": "84M",
      "image": "assets/images/DE.png",
      "description": "European powerhouse known for engineering and Oktoberfest."
    },
    {
      "name": "India",
      "population": "1.43B",
      "image": "assets/images/IN.png",
      "description": "Diverse culture and birthplace of major religions and traditions."
    },
    {
      "name": "Italy",
      "population": "59M",
      "image": "assets/images/IT.png",
      "description": "Famous for Roman history, pasta, and art masterpieces."
    },
    {
      "name": "Japan",
      "population": "124M",
      "image": "assets/images/JP.png",
      "description": "Land of the rising sun, known for technology and traditions."
    },
    {
      "name": "Mexico",
      "population": "129M",
      "image": "assets/images/MX.png",
      "description": "Known for vibrant culture, ancient ruins, and spicy cuisine."
    },
    {
      "name": "Russia",
      "population": "144M",
      "image": "assets/images/RU.png",
      "description": "World's largest country, spanning Europe and Asia."
    },
    {
      "name": "Saudi Arabia",
      "population": "36M",
      "image": "assets/images/SA.png",
      "description": "Birthplace of Islam and home to vast desert landscapes."
    },
    {
      "name": "South Africa",
      "population": "60M",
      "image": "assets/images/ZA.png",
      "description": "Diverse landscapes and Nelson Mandela’s homeland."
    },
    {
      "name": "South Korea",
      "population": "52M",
      "image": "assets/images/KR.png",
      "description": "Technologically advanced and famous for K-pop culture."
    },
    {
      "name": "Spain",
      "population": "48M",
      "image": "assets/images/ES.png",
      "description": "Rich in history, flamenco music, and Mediterranean charm."
    },
    {
      "name": "United Arab Emirates",
      "population": "10M",
      "image": "assets/images/UAE.png",
      "description": "Home to Dubai’s skyscrapers and modern architecture."
    },
    {
      "name": "United Kingdom",
      "population": "68M",
      "image": "assets/images/UK.png",
      "description": "Land of the Queen, Shakespeare, and British traditions."
    },
    {
      "name": "United States",
      "population": "339M",
      "image": "assets/images/US.png",
      "description": "A global superpower with diverse landscapes and cultures."
    }
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery
        .of(context)
        .size
        .width;

    int crossAxisCount;
    double childAspectRatio;

    if (screenWidth < 550) {
      crossAxisCount = 2;
      childAspectRatio = 0.65;
    } else if (screenWidth >= 550 && screenWidth < 768) {
      crossAxisCount = 2;
      childAspectRatio = 0.75;
    } else if (screenWidth >= 768 && screenWidth < 1024) {
      crossAxisCount = 3;
      childAspectRatio = 0.85;
    } else {
      crossAxisCount = 4;
      childAspectRatio = 0.9;
    }

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
          childAspectRatio: childAspectRatio,
        ),
        itemBuilder: (context, index) {
          final country = flags[index];
          return FlagsCard(
            name: country['name']!,
            imagePath: country['image']!,
            description: country['description']!,
            population: country['population']!,
          );
        },
      ),
    );
  }
}
