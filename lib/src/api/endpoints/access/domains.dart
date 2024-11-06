import 'package:collection/collection.dart';
import 'package:proxmox_client/src/api/endpoints/endpoint.dart';
import 'package:proxmox_client/src/models/models.dart';
import 'package:proxmox_client/src/utils/utils.dart';

/// {@template access}
/// Functions to interact with the access/domains endpoint of proxmox
/// {@endtemplate}
class ProxmoxRealms extends ProxmoxEndpoint {
  /// {@macro access}
  ProxmoxRealms({required super.baseUrl, required super.client});

  @override
  Uri get endpoint => baseUrl.addPath('domains');

  /// Fetch a list of configured domains
  Future<List<Domain>> fetchDomains() async {
    final response = await client.get(endpoint);
    final json = decodeJsonObject(response.body);
    final data = List<Map<String, dynamic>>.from(json['data'] as List<dynamic>);

    return data.map(Domain.fromMap).toList();
  }

  /// Adds a new domain
  Future<void> createDomain(DomainConfig domain) async {
    final domains = await fetchDomains();
    if (domains.firstWhereOrNull((d) => d.realm == domain.realm) != null) {
      throw Exception('Realm with name already exist');
    }

    final body = toFormUrl(domain.toMap());

    final response = await client.post(endpoint, body: body);
    if (response.statusCode != 200) {
      throw Exception('Failed to create realm (${response.statusCode}): '
          '${response.reasonPhrase ?? 'Unknown error'}');
    }
  }

  /// Update an auth server's settings
  Future<void> updateDomain(DomainConfig domain) async {
    final url = endpoint.addPath(domain.realm);
    final body = toFormUrl(domain.toMap());

    await client.put(url, body: body);
  }

  /// Delete and authentication server
  Future<void> removeDomain(String realm) async {
    await client.delete(endpoint.addPath(realm));
  }

  /// Syncs users and/or groups from the configured LDAP to user.cfg.
  ///
  /// NOTE: Synced groups will have the name 'name-$realm', so make sure those
  /// groups do not exist to prevent overwriting.
  Future<void> syncDomain(String realm, SyncOptions options) async {
    await client.post(
      endpoint.addPath('$realm/sync'),
      body: {'realm': realm, ...options.toMap()},
    );
  }
}
