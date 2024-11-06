import 'package:proxmox_client/src/api/endpoints/endpoint.dart';
import 'package:proxmox_client/src/models/responses/group.dart';
import 'package:proxmox_client/src/utils/utils.dart';

/// {@template groups}
/// Access to proxmox groups
/// {@endtemplate}
class ProxmoxGroup extends ProxmoxEndpoint {
  /// {@macro groups}
  ProxmoxGroup({required super.baseUrl, required super.client});

  @override
  Uri get endpoint => baseUrl.addPath('groups');

  /// Fetch a list of currently configured groups
  Future<List<Group>> fetchGroups() async {
    final json = decodeJsonArray((await client.get(endpoint)).body);

    return json.map(Group.fromMap).toList();
  }

  /// Creates a new group
  Future<void> createGroup(String id, [String? comment]) async {
    await client.post(
      endpoint,
      body: {'groupid': id, if (comment != null) 'comment': comment},
    );
  }

  /// Fetch a configured groups
  Future<Group> fetchGroup(String id) async {
    final url = endpoint.resolve(id);
    final json = decodeJsonObject((await client.get(url)).body);

    return Group.fromMap(json);
  }

  /// Updates an exisiting group
  Future<void> updateGroup(String id, [String? comment]) async {
    await client.put(
      endpoint.resolve(id),
      body: {'groupid': id, if (comment != null) 'comment': comment},
    );
  }

  /// Removes a group
  Future<void> removeGroup(String id) async {
    await client.delete(endpoint.resolve(id));
  }
}
