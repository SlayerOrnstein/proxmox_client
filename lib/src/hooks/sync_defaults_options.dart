// ignore_for_file: deprecated_member_use_from_same_package

import 'package:dart_mappable/dart_mappable.dart';
import 'package:proxmox_client/src/models/models.dart';
import 'package:proxmox_client/src/utils/type_extensions.dart';

/// {@template sync_defaults_options}
/// Turns a [Map] into a string of key=value that proxmox understands
/// {@endtemplate}
class SyncDefaultsOptions extends MappingHook {
  /// {@macro sync_defaults_options}
  const SyncDefaultsOptions();

  @override
  Object? beforeEncode(Object? value) {
    // sync-defaults-options follows the following regex
    // [enable-new=<1|0>] [,full=<1|0>] [,purge=<1|0>]
    // [,remove-vanished=([acl];[properties];[entry])|none]
    // [,scope=<users|groups|both>]
    if (value == null) return null;

    final options = value as SyncOptions;
    final map = <String, dynamic>{
      'enable-new': options.enableNew?.toInt(),
      'full': options.full?.toInt(),
      'purge': options.purge?.toInt(),
      'scope': options.scope?.name,
    };

    if (options.removeVanished != null) {
      map['remove-vanished'] =
          options.removeVanished!.map((v) => v.name).join(';');

      if (options.removeVanished!.contains(SyncOptionsRemoveVanished.none)) {
        map['remove-vanished'] = 'none';
      }
    }

    map.removeWhere((k, v) => v == null);

    return map.entries.map((entry) => '${entry.key}=${entry.value}').join(',');
  }
}
