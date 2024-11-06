// ignore_for_file: avoid_print, avoid_function_literals_in_foreach_calls

import 'dart:io';

import 'package:proxmox_client/proxmox_client.dart';

// Need this for self signed certs
class DevHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

Future<void> main() async {
  // root@pam!proxmox-client
  // ed589c01-3850-4d46-86cf-9b4519fd9598
  const token = (
    id: 'root@pam!proxmox-client',
    token: 'uuid',
  );

  HttpOverrides.global = DevHttpOverrides();

  final client =
      ProxmoxClient(token: token, host: InternetAddress('10.13.0.256'));

  var domains = await client.access.realms.fetchDomains();
  domains.forEach((d) => print(d.realm));

  await client.access.realms.createDomain(
    const ADDomain(
      realm: 'ad-test',
      domain: 'hello-world.com',
      mode: LdapMode.ldap,
      port: 3000,
      primaryServer: '10.13.0.255',
      checkConnection: false,
    ),
  );

  await client.access.realms.createDomain(
    const LdapDomain(
      realm: 'ldap-test',
      baseDomainName: 'hello-world.com',
      mode: LdapMode.ldap,
      port: 3000,
      primaryServer: '10.13.0.255',
      checkConnection: false,
      userAttributeName: 'email',
    ),
  );

  await client.access.realms.createDomain(
    const OpenId(
      realm: 'openid-test',
      issuerUrl: 'hello-world.com',
      clientId: 'random-id',
      clientKey: 'random-key',
    ),
  );

  domains = await client.access.realms.fetchDomains()
    ..forEach((d) => print(d.realm));
}
