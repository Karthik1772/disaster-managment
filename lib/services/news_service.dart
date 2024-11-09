import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/news_model.dart';

class NewsService {
  final String _apiKey = 'YOUR_API_KEY'; // Replace with your API key
  final String _baseUrl = 'https://newsapi.org/v2';

  // Fetch disaster-related news
  Future<List<News>> fetchDisasterNews() async {
    final response = await http.get(
      Uri.parse("$_baseUrl/top-headlines?category=general&apiKey=$_apiKey"),
    );

    if (response.statusCode == 200) {
      final List articles = jsonDecode(response.body)['articles'];
      return articles.map((json) => News.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load news');
    }
  }
}
