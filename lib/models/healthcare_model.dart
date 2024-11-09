class HealthcareCenter {
  final String name;
  final String address;
  final double latitude;
  final double longitude;

  HealthcareCenter({
    required this.name,
    required this.address,
    required this.latitude,
    required this.longitude,
  });

  // Factory constructor to create a HealthcareCenter instance from a JSON map
  factory HealthcareCenter.fromJson(Map<String, dynamic> json) {
    return HealthcareCenter(
      name: json['name'] ?? '',
      address: json['address'] ?? '',
      latitude: json['latitude']?.toDouble() ?? 0.0,
      longitude: json['longitude']?.toDouble() ?? 0.0,
    );
  }

  // Convert HealthcareCenter instance to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'address': address,
      'latitude': latitude,
      'longitude': longitude,
    };
  }
}
