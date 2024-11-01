import 'package:proxmox_client/src/api/endpoints/endpoint.dart';
import 'package:proxmox_client/src/utils/utils.dart';

class ProxmoxOpenId extends ProxmoxEndpoint {
  ProxmoxOpenId({required super.baseUrl, required super.client});

  @override
  Uri get endpoint => Uri.parse('$baseUrl/openid/');

  Future<List<String>> fetchDirectory() async {
    final response = await client.get(endpoint);
    final json = decodeJsonObject(response.body);
    final data = List<Map<String, dynamic>>.from(json['data'] as List<dynamic>);

    return data
        .map((entry) => List<String>.from(entry.values))
        .expand((s) => s)
        .toList();
  }

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
