import 'package:proxmox_client/src/models/models.dart';
import 'package:proxmox_client/src/utils/utils.dart';

/// {@template access}
/// Functions to interact with the access/domains endpoint of proxmox
/// {@endtemplate}
class ProxmoxAccess {
  /// {@macro access}
  ProxmoxAccess({required Uri baseUrl, required ProxmoxHttpClient client})
      : _baseUrl = baseUrl,
        _client = client;

  final Uri _baseUrl;
  final ProxmoxHttpClient _client;

  /// Fetch a list of configured domains
  Future<List<Domain>> fetchDomains() async {
    final url = _baseUrl.resolve('access/domains');
    final json = decodeJsonObject((await _client.get(url)).body);
    final data = json['data'] as JsonArray;

    return data.map(Domain.fromMap).toList();
  }

  /// Adds a new domain
  Future<void> createDomain(CreateDomain domain) async {
    final url = _baseUrl.resolve('access/domains');

    await _client.post(url, body: domain.toMap());
  }
}
