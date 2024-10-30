import 'dart:convert';

/// Alias for List type
typedef JsonArray = List<Map<String, dynamic>>;

/// Alias for Map type
typedef JsonObject = Map<String, dynamic>;

/// Decode a json into a [JsonArray]
JsonArray decodeJsonArray(String data) {
  return List<Map<String, dynamic>>.from(jsonDecode(data) as List<dynamic>)
      .toList();
}

/// Decode a json object into a [JsonObject]
JsonObject decodeJsonObject(String data) => jsonDecode(data) as JsonObject;
