import 'package:proxmox_client/src/api/endpoints/endpoint.dart';
import 'package:proxmox_client/src/models/models.dart';
import 'package:proxmox_client/src/utils/utils.dart';
import 'package:collection/collection.dart';

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
  Future<void> createDomain(RealmConfig domain) async {
    final domains = await fetchDomains();
    if (domains.firstWhereOrNull((d) => d.realm == domain.realm) != null) {
      throw Exception('Realm with name already exist');
    }

    final payload = domain.toMap()..removeWhere((k, v) => v == null);
    for (final key in payload.keys) {
      if (payload[key] is String) continue;

      payload[key] = payload[key].toString();
    }

    // Realm type doesn't get added in the toMap() so add it here
    payload['type'] = domain.type.name;

    final response = await client.post(endpoint, body: payload);
    if (response.statusCode != 200) {
      // TODO(Orn): need a better exception
      throw Exception('Error adding realm');
    }
  }

  /// Update an auth server's settings
  Future<void> updateDomain(RealmConfig domain) async {
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
