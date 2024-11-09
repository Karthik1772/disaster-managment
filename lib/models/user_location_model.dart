class UserLocation {
  final double latitude;
  final double longitude;

  UserLocation({
    required this.latitude,
    required this.longitude,
  });

  // Factory constructor to create a UserLocation instance from a JSON map
  factory UserLocation.fromJson(Map<String, dynamic> json) {
    return UserLocation(
      latitude: json['latitude']?.toDouble() ?? 0.0,
      longitude: json['longitude']?.toDouble() ?? 0.0,
    );
  }

  // Convert UserLocation instance to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'latitude': latitude,
      'longitude': longitude,
    };
  }
}
