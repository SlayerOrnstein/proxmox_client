import 'package:proxmox_client/src/utils/utils.dart';

/// {@template endpoint}
/// Base class for all endpoints
/// {@endtemplate}
abstract class ProxmoxEndpoint {
  /// {@macro endpoint}
  ProxmoxEndpoint({required this.baseUrl, required this.client});

  /// Base url used by the client
  final Uri baseUrl;

  /// Authenticated proxmox client
  final ProxmoxHttpClient client;

  /// Override to add endpoint path
  Uri get endpoint;
}
