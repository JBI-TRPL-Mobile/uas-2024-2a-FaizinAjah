import 'dart:convert';

class JsonHelper {
  static String encodeToJson(Map<String, dynamic> data) {
    return json.encode(data);
  }

  static Map<String, dynamic> decodeFromJson(String jsonString) {
    return json.decode(jsonString);
  }
}