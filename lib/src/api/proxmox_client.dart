import 'package:http/http.dart';
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
  })  : basUrl = Uri.https('$host:$port/api2/json'),
        _proxmoxHttpClient = ProxmoxHttpClient(token: token, client: client);

  /// Base url that all endpoints call to
  final Uri basUrl;

  // ignore: unused_field
  final ProxmoxHttpClient _proxmoxHttpClient;
}
