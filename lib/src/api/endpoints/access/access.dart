import 'package:proxmox_client/src/api/endpoints/access/domains.dart';
import 'package:proxmox_client/src/api/endpoints/endpoint.dart';

/// {@template access}
/// Functions to interact with the access/domains endpoint of proxmox
/// {@endtemplate}
class ProxmoxAccess extends ProxmoxEndpoint {
  /// {@macro access}
  ProxmoxAccess({required super.baseUrl, required super.client});

  @override
  Uri get endpoint => baseUrl.resolve('access');

  /// Domain endpoint for access
  ProxmoxDomains get domains =>
      ProxmoxDomains(baseUrl: endpoint, client: client);
}