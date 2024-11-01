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
  Uri get endpoint => Uri.parse('$baseUrl/domains');

  /// Fetch a list of configured domains
  Future<List<Domain>> fetchRealms() async {
    final json = decodeJsonObject((await client.get(endpoint)).body);
    final data = List<Map<String, dynamic>>.from(json['data'] as List<dynamic>);

    return data.map(Domain.fromMap).toList();
  }

  /// Adds a new domain
  Future<void> createRealm(RealmConfig domain) async {
    final domains = await fetchRealms();
    if (domains.firstWhereOrNull((d) => d.realm == domain.realm) != null) {
      throw Exception('Realm with name already exist');
    }

    final body = toFormUrl(domain.toMap());
    // Realm type doesn't get added in the toMap() so add it here
    body['type'] = domain.type.name;

    final response = await client.post(endpoint, body: body);
    if (response.statusCode != 200) {
      throw Exception('Failed to create realm (${response.statusCode}): '
          '${response.reasonPhrase ?? 'Unknown error'}');
    }
  }

  /// Update an auth server's settings
  Future<void> updateRealm(RealmConfig domain) async {
    final url = endpoint.resolve(domain.realm);

    final body = toFormUrl(domain.toMap());
    // Realm type doesn't get added in the toMap() so add it here
    body['type'] = domain.type.name;

    await client.put(url, body: body);
  }

  /// Delete and authentication server
  Future<void> removeRealm(String realm) async {
    await client.delete(endpoint.resolve(realm));
  }

  /// Syncs users and/or groups from the configured LDAP to user.cfg.
  ///
  /// NOTE: Synced groups will have the name 'name-$realm', so make sure those
  /// groups do not exist to prevent overwriting.
  Future<void> syncRealm(String realm, SyncOptions options) async {
    final url = endpoint.resolve('/$realm/sync');

    await client.post(url, body: {'realm': realm, ...options.toMap()});
  }
}
