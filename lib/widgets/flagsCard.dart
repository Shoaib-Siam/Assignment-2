import 'package:flutter/material.dart';

class FlagsCard extends StatelessWidget {
  final String name;
  final String imagePath;
  final String description;
  final String population;

  const FlagsCard({
    super.key,
    required this.name,
    required this.imagePath,
    required this.description,
    required this.population,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            // Flag Image
            AspectRatio(
              aspectRatio: 16 / 9,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            const SizedBox(height: 8),
            // Country name & population
            Row(
              children: [
                const Icon(Icons.flag, size: 16),
                const SizedBox(width: 4),
                Expanded(
                  child: Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const Icon(Icons.people, size: 16),
                const SizedBox(width: 4),
                Text(population),
              ],
            ),
            const SizedBox(height: 8),
            // Description
            Expanded(
              child: Text(
                description,
                style: const TextStyle(fontSize: 13),
                overflow: TextOverflow.fade,
                maxLines: 3,
              ),
            ),
            const SizedBox(height: 8),
            // View Details button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {},
                icon: const Icon(Icons.arrow_forward),
                label: const Text("View Details"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
