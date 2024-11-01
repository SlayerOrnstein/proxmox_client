import 'package:dart_mappable/dart_mappable.dart';
import 'package:proxmox_client/src/hooks/hooks.dart';

part 'sync_options.mapper.dart';

/// The scope of what to sync. It can be either users, groups or both.
// ignore: public_member_api_docs
enum SyncOptionsScope { users, groups, both }

/// This is a list of options which, when activated, determine if they are
/// removed when they are not returned from the sync response
enum SyncOptionsRemoveVanished {
  /// Remove ACLs of users and groups which were not returned returned in the
  /// sync response. This most often makes sense together with Entry.
  acl,

  /// Removes entries (i.e. users and groups) when they are not returned in the
  /// sync response.
  entry,

  ///  Removes properties of entries where the user in the sync response did
  /// not contain those attributes. This includes all properties, even those
  /// never set by a sync. Exceptions are tokens and the enable flag, these
  /// will be retained even with this option enabled
  properties,

  /// None
  none
}

/// {@template sync_options}
/// The default options for behavior of synchronizations.
/// {@endtemplate}
@MappableClass()
class SyncOptions with SyncOptionsMappable {
  /// {@macro sync_options}
  SyncOptions({
    this.scope,
    this.removeVanished,
    @Deprecated('use removeVanished instead.') this.purge,
    @Deprecated('use removeVanished instead.') this.full,
    this.enableNew = true,
    this.dryRun = false,
  });

  /// Enable newly synced users immediately
  @MappableField(key: 'enable-new', hook: ProxmoxBoolHook())
  final bool? enableNew;

  /// Remove ACLs for users or groups which were removed from the config
  /// during a sync.
  @Deprecated('use removeVanished instead.')
  @MappableField(hook: ProxmoxBoolHook())
  final bool? purge;

  /// If set, uses the LDAP Directory as source of truth, deleting users or
  /// groups not returned from the sync and removing all locally modified
  /// properties of synced users. If not set, only syncs information which is
  /// present in the synced data, and does not delete or modify anything else
  @Deprecated('use removeVanished instead.')
  @MappableField(hook: ProxmoxBoolHook())
  final bool? full;

  /// Remove Vanished (remove-vanished): This is a list of options which, when
  /// activated, determine if they are removed when they are not returned from
  /// the sync response. The options are:
  ///
  /// * ACL (acl): Remove ACLs of users and groups which were not returned
  ///   returned in the sync response. This most often makes sense together
  ///   with Entry.
  ///
  /// * Entry (entry): Removes entries (i.e. users and groups) when they are
  ///   not returned in the sync response.
  ///
  /// * Properties (properties): Removes properties of entries where the user in
  ///   the sync response did not contain those attributes. This includes all
  ///   properties, even those never set by a sync. Exceptions are tokens and
  ///   the enable flag, these will be retained even with this option enabled.
  @MappableField(key: 'remove-vanished')
  final List<SyncOptionsRemoveVanished>? removeVanished;

  /// The scope of what to sync. It can be either users, groups or both.
  final SyncOptionsScope? scope;

  /// If set, does not write anything.
  @MappableField(hook: ProxmoxBoolHook())
  final bool dryRun;
}
