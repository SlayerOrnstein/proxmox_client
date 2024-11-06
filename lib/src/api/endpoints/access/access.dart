import 'package:proxmox_client/src/api/endpoints/access/domains.dart';
import 'package:proxmox_client/src/api/endpoints/access/groups.dart';
import 'package:proxmox_client/src/api/endpoints/access/open_id.dart';
import 'package:proxmox_client/src/api/endpoints/endpoint.dart';
import 'package:proxmox_client/src/utils/utils.dart';

/// {@template access}
/// Functions to interact with the access/domains endpoint of proxmox
/// {@endtemplate}
class ProxmoxAccess extends ProxmoxEndpoint {
  /// {@macro access}
  ProxmoxAccess({required super.baseUrl, required super.client});

  @override
  Uri get endpoint => baseUrl.addPath('access');

  /// Domain endpoint
  ProxmoxDomains get realms =>
      ProxmoxDomains(baseUrl: endpoint, client: client);

  /// Group endpoint
  ProxmoxGroup get groups => ProxmoxGroup(baseUrl: endpoint, client: client);

  /// OpenID endpoint
  ProxmoxOpenId get openId => ProxmoxOpenId(baseUrl: endpoint, client: client);
}
