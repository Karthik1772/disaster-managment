import 'dart:convert';
import 'package:http/http.dart' as http;

class ChatbotService {
  final String apiUrl =
      'https://api.example.com/chat'; // Replace with your actual API URL

  // Send a message to the chatbot API and get the response
  Future<String> getResponse(String query) async {
    // Mock API request: sending the query to the chatbot backend via POST request
    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        body: json.encode({'message': query}),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        // Assuming the API returns a JSON response with a 'response' field
        final responseData = json.decode(response.body);
        return responseData['response'] ?? 'No response from the bot';
      } else {
        return 'Failed to fetch response from the chatbot API.';
      }
    } catch (e) {
      return 'An error occurred: $e';
    }
  }
}
