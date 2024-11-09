import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  final List<Map<String, String>> newsArticles = [
    {
      "title": "Earthquake in Region X",
      "description": "An earthquake of magnitude 6.5 has struck Region X. Authorities are assessing damage.",
    },
    {
      "title": "Flood Alert in City Y",
      "description": "Heavy rains have caused flooding in City Y. Residents are advised to evacuate to higher ground.",
    },
    {
      "title": "Wildfire in Forest Z",
      "description": "A wildfire is spreading rapidly in Forest Z. Firefighters are working to control the blaze.",
    },
  ];

  NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Disaster News'),
      ),
      body: ListView.builder(
        itemCount: newsArticles.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: const Icon(Icons.article, color: Colors.red),
              title: Text(
                newsArticles[index]['title']!,
                style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(newsArticles[index]['description']!),
            ),
          );
        },
      ),
    );
  }
}
