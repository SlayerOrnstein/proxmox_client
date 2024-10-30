import 'package:http/http.dart' as http;

/// {@template proxmox_http_client}
/// Proxmox http client that will wrap all calls with a PVEAPITOKEN
/// {@endtemplate}
class ProxmoxHttpClient extends http.BaseClient {
  /// {@macro proxmox_http_client}
  ProxmoxHttpClient({required this.token, http.Client? client})
      : _inner = client ?? http.Client();

  /// PVE token to wrap calls in
  final PveApiToken token;
  final http.Client _inner;

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers['Authorization'] = token.toString();

    return _inner.send(request);
  }
}

/// {@template pve_api_token}
/// Information on The PVE API token
/// {@endtemplate}
class PveApiToken {
  /// {@macro pve_api_token}
  PveApiToken({
    required this.user,
    required this.realm,
    required this.tokenId,
    required this.uuid,
  });

  /// The proxmox user
  final String user;

  /// The proxmox realm the user belongs to
  final String realm;

  /// Token ID
  final String tokenId;

  /// Token UUID
  final String uuid;

  @override
  String toString() {
    return '$user@$realm!$tokenId=$uuid';
  }
}
