import 'package:proxmox_client/src/api/endpoints/endpoint.dart';
import 'package:proxmox_client/src/utils/utils.dart';

/// {@template openid}
/// Interact with the openID endpoint
/// {@endtemplate}
class ProxmoxOpenId extends ProxmoxEndpoint {
  /// {@macro openid}
  ProxmoxOpenId({required super.baseUrl, required super.client});

  @override
  Uri get endpoint => Uri.parse('$baseUrl/openid/');

  /// Fetch directory index
  Future<List<String>> fetchDirectory() async {
    final response = await client.get(endpoint);
    final json = decodeJsonObject(response.body);
    final data = List<Map<String, dynamic>>.from(json['data'] as List<dynamic>);

    return data
        .map((entry) => List<String>.from(entry.values))
        .expand((s) => s)
        .toList();
  }

  /// Get the OpenId Authorization Url for the specified realm.
  // TODO(Orn): Need to set one of these up to see the response better
  //  but I don't have a reason to do all that work right now
  Future<String> fetchAuthUrl(String realm, String redirectUrl) async {
    final response = await client.post(
      endpoint.resolve('auth-url'),
      body: {'realm': realm, 'redirect-url': redirectUrl},
    );

    if (response.statusCode != 200) {
      throw Exception(response.reasonPhrase);
    }

    final json = decodeJsonObject(response.body);

    return json['data'] as String;
  }
}
