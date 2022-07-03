
import 'package:wings/Models/Model.dart';

class Destinations extends Model {
  Destinations({
    required this.id,
    required this.destination,
    required this.description,
    required this.lat,
    required this.lang,
    required this.district,
    required this.category,
    required this.averageRate,
    required this.imagePath,
  });
  late int id;
  late String destination;
  late String description;
  late double lat;
  late double lang;
  late String district;
  late String category;
  late int averageRate;
  late String imagePath;

  @override
  factory Destinations.fromJson(Map<String, dynamic> json) => Destinations(
        id:json["id"],
        destination: json["destination"],
        description: json["description"],
        lat: json["lat"],
        lang: json["long"],
        district: json["district"],
        category: json["category"].toString(),
        averageRate: json["average_rate"],
        imagePath: json["image_path"],
      );
  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "destination": destination,
        "description": description,
        "lat": lat,
        "long": lang,
        "district": district,
        "category": category,
        "average_rate": averageRate,
        "image_path": imagePath,
      };
}
