import 'package:proxmox_client/proxmox_client.dart';
import 'package:proxmox_client/src/utils/utils.dart';
import 'package:test/test.dart';

void main() {
  group('CreateDomain()', () {
    test('values are serialized properly', () {
      final domain = CreateDomain(
        realm: 'hello',
        type: DomainType.ldap,
        domain: 'world',
        acrValues: 'PVEAdmin',
        prompt: Prompt.selectAccount,
        syncDefaultsOptions: SyncOptions(
          enableNew: false,
          removeVanished: [
            SyncOptionsRemoveVanished.acl,
            SyncOptionsRemoveVanished.entry,
            SyncOptionsRemoveVanished.properties,
          ],
        ),
      ).toMap();

      final prompt = domain['prompt'] as String;
      expect(ProxmoxRegex.prompt.hasMatch(prompt), true);

      final options = domain['sync-defaults-options'] as String;
      expect(ProxmoxRegex.syncDefaultsOptions.hasMatch(options), true);
    });
  });
}