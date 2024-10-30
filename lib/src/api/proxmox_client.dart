import 'package:http/http.dart';
import 'package:proxmox_client/src/api/api.dart';
import 'package:proxmox_client/src/utils/utils.dart';

/// {@template proxmox_client}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
class ProxmoxClient {
  /// {@macro proxmox_client}
  ProxmoxClient({
    required PveApiToken token,
    required String host,
    int port = 8006,
    Client? client,
  })  : baseUrl = Uri.https('$host:$port/api2/json'),
        _client = ProxmoxHttpClient(token: token, client: client);

  /// Base url that all endpoints call to
  final Uri baseUrl;

  // ignore: unused_field
  final ProxmoxHttpClient _client;

  /// Proxmox access endpoint
  ProxmoxAccess get access => ProxmoxAccess(baseUrl: baseUrl, client: _client);
}
