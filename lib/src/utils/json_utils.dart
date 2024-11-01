import 'dart:convert';

/// Alias for List type
typedef JsonArray = List<Map<String, dynamic>>;

/// Alias for Map type
typedef JsonObject = Map<String, dynamic>;

/// Decode a json into a [JsonArray]
JsonArray decodeJsonArray(String data) {
  return List<Map<String, dynamic>>.from(jsonDecode(data) as List<dynamic>);
}

/// Decode a json object into a [JsonObject]
JsonObject decodeJsonObject(String data) => jsonDecode(data) as JsonObject;

// Proxmox uses int for boolean so make sure everything is a string before
// passing it to http.post()
// ignore: public_member_api_docs
Map<String, String> toFormUrl(Map<String, dynamic> body) {
  final payload = body..removeWhere((k, v) => v == null);
  for (final key in payload.keys) {
    if (payload[key] is String) continue;

    payload[key] = payload[key].toString();
  }

  return Map<String, String>.from(payload);
}
