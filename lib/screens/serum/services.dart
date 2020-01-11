import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:skincare/model/photo.dart';

class Services {
  static const String url = "https://kjsontest.000webhostapp.com/apiser/getPost.php";

  static Future<List<Photo>> getPhotos() async {
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        List<Photo> list = parsePhotos(response.body);
        return list;
      } else {
        throw Exception("Error");
      }
    } catch (e) {
      print(e);
      throw Exception(e.toString());
      
    }
  }

  static List<Photo> parsePhotos(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
  }
}