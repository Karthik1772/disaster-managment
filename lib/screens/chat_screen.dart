// ignore_for_file: unused_import

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _messages = [];

  @override
  void initState() {
    super.initState();
    dotenv.load();  // Load environment variables if you're using dotenv
  }

  // Function to handle user input and send it to a mock API
  void _sendMessage() async {
    if (_controller.text.isEmpty) return;

    setState(() {
      _messages.add("You: ${_controller.text}");
    });

    try {
      final response = await _sendMessageToAPI(_controller.text);

      setState(() {
        _messages.add("Bot: $response");
      });
    } catch (e) {
      setState(() {
        _messages.add("Bot: Sorry, I couldn't process your request.");
      });
    }

    // Clear the input field
    _controller.clear();
  }

  // Simulate a call to an external API
  Future<String> _sendMessageToAPI(String message) async {
    final url = Uri.parse('https://api.mocki.io/v1/35b7f98b'); // Mock API endpoint

    final response = await http.post(
      url,
      body: json.encode({'message': message}),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data['response'] ?? 'No response from the bot';
    } else {
      throw Exception('Failed to load chatbot response');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Emergency Chatbot')),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_messages[index]),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: 'Type your message',
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
