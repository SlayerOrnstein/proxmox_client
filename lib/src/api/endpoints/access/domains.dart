import 'package:proxmox_client/src/api/endpoints/endpoint.dart';
import 'package:proxmox_client/src/models/models.dart';
import 'package:proxmox_client/src/utils/utils.dart';

/// {@template access}
/// Functions to interact with the access/domains endpoint of proxmox
/// {@endtemplate}
class ProxmoxDomains extends ProxmoxEndpoint {
  /// {@macro access}
  ProxmoxDomains({required super.baseUrl, required super.client});

  @override
  Uri get endpoint => Uri.parse('$baseUrl/domains');

  /// Fetch a list of configured domains
  Future<List<Domain>> fetchDomains() async {
    final json = decodeJsonObject((await client.get(endpoint)).body);
    final data = List<Map<String, dynamic>>.from(json['data'] as List<dynamic>);

    return data.map(Domain.fromMap).toList();
  }

  /// Adds a new domain
  Future<void> createDomain(DomainConfig domain) async {
    final response = await client.post(endpoint, body: domain.toMap());
    print(response.body);
  }

  /// Update an auth server's settings
  Future<void> updateDomain(DomainConfig domain) async {
    final url = endpoint.resolve(domain.realm);

    await client.put(url, body: domain.toMap());
  }

  /// Delete and authentication server
  Future<void> deleteDomain(String realm) async {
    await client.delete(endpoint.resolve(realm));
  }

  /// Syncs users and/or groups from the configured LDAP to user.cfg.
  ///
  /// NOTE: Synced groups will have the name 'name-$realm', so make sure those
  /// groups do not exist to prevent overwriting.
  Future<void> syncDomain(String realm, SyncOptions options) async {
    final url = endpoint.resolve('$realm/sync');

    await client.post(url, body: {'realm': realm, ...options.toMap()});
  }
}
