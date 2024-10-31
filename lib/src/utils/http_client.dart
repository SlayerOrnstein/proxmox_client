import 'package:http/http.dart' as http;

/// Record for proxmox user, realm, token ID, and the token itself
typedef ProxmoxToken = ({String id, String token});

/// {@template proxmox_http_client}
/// Proxmox http client that will wrap all calls with a PVEAPITOKEN
/// {@endtemplate}
class ProxmoxHttpClient extends http.BaseClient {
  /// {@macro proxmox_http_client}
  ProxmoxHttpClient({required this.token, http.Client? client})
      : _inner = client ?? http.Client();

  /// PVE token to wrap calls in
  final ProxmoxToken token;
  final http.Client _inner;

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers['Authorization'] = 'PVEAPIToken=${token.id}=${token.token}';

    return _inner.send(request);
  }
}
