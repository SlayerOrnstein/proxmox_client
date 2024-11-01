import 'package:proxmox_client/src/api/endpoints/access/domains.dart';
import 'package:proxmox_client/src/api/endpoints/access/groups.dart';
import 'package:proxmox_client/src/api/endpoints/access/open_id.dart';
import 'package:proxmox_client/src/api/endpoints/endpoint.dart';

/// {@template access}
/// Functions to interact with the access/domains endpoint of proxmox
/// {@endtemplate}
class ProxmoxAccess extends ProxmoxEndpoint {
  /// {@macro access}
  ProxmoxAccess({required super.baseUrl, required super.client});

  @override
  Uri get endpoint => Uri.parse('$baseUrl/access');

  /// Domain endpoint for access
  ProxmoxRealms get realms => ProxmoxRealms(baseUrl: endpoint, client: client);

  ProxmoxGroup get groups => ProxmoxGroup(baseUrl: endpoint, client: client);

  ProxmoxOpenId get openId => ProxmoxOpenId(baseUrl: endpoint, client: client);
}
