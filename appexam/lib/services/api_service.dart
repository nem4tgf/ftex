import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/place.dart';

class ApiService {
  static const String baseUrl = 'http://localhost:8080/api/place';

  static Future<List<Place>> getAllPlace() async {
    final response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      List jsonData = json.decode(response.body);
      return jsonData.map((e) => Place.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load places');
    }
  }
}