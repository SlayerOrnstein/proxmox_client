import 'dart:io';

import 'package:collection/collection.dart';
import 'package:proxmox_client/proxmox_client.dart';
import 'package:test/test.dart';

import '../utils/utils.dart';

void main() {
  final pveIp = safeEnvVar('PVE_IP');
  final pveId = safeEnvVar('PVE_USER');
  final pveApiKey = safeEnvVar('PVE_API_KEY');

  late ProxmoxClient proxmoxClient;

  setUp(() {
    HttpOverrides.global = DevHttpOverrides();

    proxmoxClient = ProxmoxClient(
      token: (id: pveId, token: pveApiKey),
      host: InternetAddress(pveIp),
    );
  });

  group('Domains', () {
    const testRealm = OpenId(
      realm: 'openid-test',
      issuerUrl: 'https://hello-world.com',
      clientId: 'random-id',
    );

    test('fetchRealms() => List<Domain>', () async {
      final domains = await proxmoxClient.access.realms.fetchDomains();

      expect(domains, isList);
    });

    test('createDomain() => New domain', () async {
      await proxmoxClient.access.realms.createDomain(testRealm);

      final realms = await proxmoxClient.access.realms.fetchDomains();

      expect(
        realms.firstWhere((d) => d.realm == testRealm.realm),
        const TypeMatcher<Domain>(),
      );
    });

    test('updateRealm() => Updates default Realm', () async {
      await proxmoxClient.access.realms.updateDomain(
        testRealm.copyWith(isDefault: true),
      );

      final realms = await proxmoxClient.access.realms.fetchDomains();
      final testDomain = realms.firstWhere((d) => d.realm == testRealm.realm);

      expect(testDomain.isDefault != testRealm.isDefault, true);
    });

    test('removeDomain() => Delete realm', () async {
      await proxmoxClient.access.realms.removeDomain(testRealm.realm);

      final realms = await proxmoxClient.access.realms.fetchDomains();

      expect(
        realms.firstWhereOrNull((d) => d.realm == testRealm.realm),
        isNull,
      );
    });
  });

  group('Groups', () {
    test('fetchGroups() => List of groups', () async {
      final groups = await proxmoxClient.access.groups.fetchGroups();

      expect(groups, isList);
    });

    test('createGroup() => New group', () async {
      await proxmoxClient.access.groups
          .createGroup('test-group', comment: 'test group');

      final group = await proxmoxClient.access.groups.fetchGroup('test-group');

      expect(group, isNotNull);
      expect(group!.comment, 'test group');
    });

    test('fetchGroup() => get existing group', () async {
      final group = await proxmoxClient.access.groups.fetchGroup('test-group');

      expect(group, isNotNull);
      expect(group!.comment, 'test group');
    });

    test('updateGroup() => update an existing group', () async {
      await proxmoxClient.access.groups
          .updateGroup('test-group', comment: 'edit');

      final group = await proxmoxClient.access.groups.fetchGroup('test-group');

      expect(group, isNotNull);
      expect(group!.comment, 'edit');
    });

    test('removeGroup() => delete group', () async {
      await proxmoxClient.access.groups.removeGroup('test-group');

      final group = await proxmoxClient.access.groups.fetchGroup('test-group');

      expect(group, isNull);
    });
  });
}
