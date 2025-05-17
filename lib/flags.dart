import 'package:assignment2/widgets/flagsCard.dart';
import 'package:flutter/material.dart';

class Flags extends StatefulWidget {
  const Flags({super.key});

  @override
  State<Flags> createState() => _FlagsState();
}
final List<Map<String, String>> flags = [
  {"title": "United States", "flag": "🇺🇸"},
  {"title": "United Kingdom", "flag": "🇬🇧"},
  {"title": "India", "flag": "🇮🇳"},
  {"title": "Bangladesh", "flag": "🇧🇩"},
  {"title": "Canada", "flag": "🇨🇦"},
  {"title": "Australia", "flag": "🇦🇺"},
  {"title": "Germany", "flag": "🇩🇪"},
  {"title": "Japan", "flag": "🇯🇵"},
  {"title": "Brazil", "flag": "🇧🇷"},
  {"title": "France", "flag": "🇫🇷"},
  {"title": "Italy", "flag": "🇮🇹"},
  {"title": "Spain", "flag": "🇪🇸"},
  {"title": "South Korea", "flag": "🇰🇷"},
  {"title": "Russia", "flag": "🇷🇺"},
  {"title": "China", "flag": "🇨🇳"},
  {"title": "Mexico", "flag": "🇲🇽"},
  {"title": "South Africa", "flag": "🇿🇦"},
  {"title": "Argentina", "flag": "🇦🇷"},
  {"title": "Saudi Arabia", "flag": "🇸🇦"},
  {"title": "United Arab Emirates", "flag": "🇦🇪"},
];

class _FlagsState extends State<Flags> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Country's Flags",
        style: TextStyle(
        color: Colors.white,),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: LayoutBuilder(
        builder: (context, items) {
          int columns;
          if (items.maxWidth > 1024) {
            columns = 4; // Desktop
          } else if (items.maxWidth > 768) {
            columns = 3; // Tablet
          } else {
            columns = 2; // Mobile
          }

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: columns,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: flags.length,
              itemBuilder: (context, index) {
                return FlagsCard(
                  title: flags[index]["title"]!,
                  flag: flags[index]["flag"]!,
                );
              },
            ),
          );
        },
      ),
    );
  }
}


