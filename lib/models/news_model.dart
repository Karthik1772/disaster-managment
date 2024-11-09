class News {
  final String title;
  final String description;
  final String url;
  final String imageUrl;

  News({
    required this.title,
    required this.description,
    required this.url,
    required this.imageUrl,
  });

  // Factory constructor to create a News instance from a JSON map
  factory News.fromJson(Map<String, dynamic> json) {
    return News(
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      url: json['url'] ?? '',
      imageUrl: json['urlToImage'] ?? '',
    );
  }

  // Convert News instance to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'url': url,
      'imageUrl': imageUrl,
    };
  }
}
