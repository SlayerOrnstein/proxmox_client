import 'dart:io';

String safeEnvVar(String name) {
  final value = Platform.environment[name];
  if (value == null) throw Exception('Missing $name');

  return value;
}

// Need this for self signed certs
class DevHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
