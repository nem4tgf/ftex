class Place {
  final int id;
  final String name;
  final String location;
  final String imageUrl;

  Place({required this.id, required this.name, required this.location, required this.imageUrl});

  factory Place.fromJson(Map<String, dynamic> json) {
    return Place(
      id: json['id'],
      name: json['name'],
      location: json['location'],
      imageUrl: json['imageUrl'],
    );
  }
}