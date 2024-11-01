import 'package:proxmox_client/proxmox_client.dart';
import 'package:proxmox_client/src/utils/utils.dart';
import 'package:test/test.dart';

void main() {
  group('CreateDomain()', () {
    test('values are serialized properly', () {
      final domain = ADRealm(
        realm: 'hello',
        domain: 'world',
        syncDefaultsOptions: SyncOptions(
          enableNew: false,
          removeVanished: [
            SyncOptionsRemoveVanished.acl,
            SyncOptionsRemoveVanished.entry,
            SyncOptionsRemoveVanished.properties,
          ],
        ),
        mode: LdapMode.ldap,
        port: 3000,
        primaryServer: '0.0.0.0',
      ).toMap();

      final options = domain['sync-defaults-options'] as String;
      expect(ProxmoxRegex.syncDefaultsOptions.hasMatch(options), true);

      final openId = OpenId(
        realm: 'hello-world',
        issuerUrl: 'issuer',
        clientId: 'id',
        acrValues: 'PVEAdmin',
        prompt: Prompt.selectAccount,
      ).toMap();

      final prompt = openId['prompt'] as String;
      expect(ProxmoxRegex.prompt.hasMatch(prompt), true);
    });
  });
}
