import 'package:wings/features/Models/Model.dart';

class Destinations extends Model {
  late int x;
  int? z;
  bool? selected=false;
  Destinations({required this.x, this.z});

  @override
  Destinations.fromJson(Map<String, dynamic> json) {}
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    return data;
  }
}
