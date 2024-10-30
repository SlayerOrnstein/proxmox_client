import 'package:dart_mappable/dart_mappable.dart';
import 'package:proxmox_client/src/hooks/hooks.dart';

part 'domain_config.mapper.dart';

/// Realm type
@MappableEnum()
enum DomainType {
  /// Microsoft Active Directory
  ad,

  /// Lightweight Directory Access Protocol
  ldap,

  /// OpenID
  openid,

  /// Linux PAM Standard Authentication
  pam,

  /// Proxmox VE Authentication Server
  pve
}

/// LDAP modes
@MappableEnum()
enum LdapMode {
  /// Lightweight Directory Access Protocol
  ldap,

  /// LDAP over SSL
  ldaps,

  /// LDAP over STARTTLS
  @MappableValue('ldap+starttls')
  ldapStarTTls;
}

/// LDAPS TLS/SSL version. It's not recommended to use version
/// older than 1.2!
@MappableEnum()
enum SslVersion {
  /// TLS version 1
  @Deprecated('Insecure')
  tlsv1,

  /// TLS version 1.1
  @Deprecated('Insecure')
  tlsv1_1,

  /// TLS version 1.2
  tlsv1_2,

  /// TLS version 1.3
  tlsv1_3,
}

/// Type of prompt to use for OpenID
@MappableEnum()
enum Prompt {
  /// none
  none,

  /// login
  login,

  /// Consent
  consent,

  /// select_account
  @MappableValue('select_account')
  selectAccount
}

/// {@template create_domain}
/// Equal to `pvesh create /access/domains
/// {@endtemplate}
@MappableClass(ignoreNull: true)
class DomainConfig with DomainConfigMappable {
  /// {@macro create_domain}
  DomainConfig({
    required this.realm,
    required this.type,
    this.acrValues,
    this.autocreate,
    this.baseDn,
    this.bindDn,
    this.capath,
    this.isCaseSensitive,
    this.cert,
    this.certKey,
    this.checkConnection,
    this.clientId,
    this.clientKey,
    this.comment,
    this.isDefault,
    this.domain,
    this.filter,
    this.groupClasses,
    this.groupDn,
    this.groupFilter,
    this.groupNameAttribute,
    this.issuerUrl,
    this.mode = LdapMode.ldap,
    this.password,
    this.port,
    this.prompt,
    this.scopes = 'email profile',
    @Deprecated('use mode instead') this.isSecure,
    this.primaryServer,
    this.fallbackServer,
    this.sslVersion,
    this.syncDefaultsOptions,
    this.syncAttributes,
    this.tfa,
    this.userAttr,
    this.userClasses,
    this.usernameClaim,
    this.shouldVerify,
  });

  /// Authentication domain ID
  final String realm;

  /// Realm type
  final DomainType type;

  /// Specifies the Authentication Context Class Reference values that the
  /// Authorization Server is being requested to use for the Auth Request.
  ///
  /// Throws:
  ///
  /// * [FormatException] if acr-values doesn't follow the following regex
  /// `^[^\x00-\x1F\x7F <>#"]*$`
  @MappableField(key: 'acr-values', hook: AcrValuesHook())
  final String? acrValues;

  /// Automatically create users if they do not exist.
  @MappableField(hook: ProxmoxBoolHook())
  final bool? autocreate;

  /// LDAP base domain name
  @MappableField(key: 'base_dn')
  final String? baseDn;

  ///	LDAP bind domain name
  @MappableField(key: 'bind_dn')
  final String? bindDn;

  /// Path to the CA certificate store
  final String? capath;

  /// Whether username is case-sensitive or not
  @MappableField(key: 'case-sensitive', hook: ProxmoxBoolHook())
  final bool? isCaseSensitive;

  /// Path to the client certificate
  final String? cert;

  /// Path to the client certificate key
  final String? certKey;

  /// Check bind connection to the server.
  @MappableField(key: 'check-connection', hook: ProxmoxBoolHook())
  final bool? checkConnection;

  /// OpenID Client ID
  @MappableField(key: 'client-id')
  final String? clientId;

  /// OpenID Client ket
  @MappableField(key: 'client-key')
  final String? clientKey;

  /// A comment
  final String? comment;

  /// Use this as default realm
  @MappableField(key: 'default', hook: ProxmoxBoolHook())
  final bool? isDefault;

  /// AP domain name
  @MappableField(hook: DomainHook())
  final String? domain;

  /// LDAP filter for user sync
  final String? filter;

  /// The object classes for groups

  @MappableField(key: 'group_classes', hook: GroupClasses())
  final List<String>? groupClasses;

  /// LDAP base domain name for group sync. If not set the [baseDn] will be used
  @MappableField(key: 'group_dn')
  final String? groupDn;

  /// LDAP filter for group sync
  @MappableField(key: 'groupd_filter')
  final String? groupFilter;

  /// LDAP attribute representing a groups name. If not set or found, the first
  /// value of the DN will be used as name.
  @MappableField(key: 'group_name_attr')
  final String? groupNameAttribute;

  /// OpenID issuer URL
  @MappableField(key: 'issuer-url')
  final String? issuerUrl;

  /// LDAP protocol mode.
  final LdapMode mode;

  /// LDAP bind password. Will be stored in '/etc/pve/priv/realm/<REALM>.pw'.
  final String? password;

  /// Server port.
  final int? port;

  /// Specifies whether the Authorization Server prompts the End-User for
  /// reauthentication and consent.
  final Prompt? prompt;

  /// Specifies the scopes (user details) that should be authorized and
  /// returned, for example 'email' or 'profile'.
  final String scopes;

  /// Use secure LDAPS protocol.
  @Deprecated('use mode instead')
  @MappableField(key: 'secure', hook: ProxmoxBoolHook())
  final bool? isSecure;

  /// Server IP address (or DNS name)
  @MappableField(key: 'server1')
  final String? primaryServer;

  /// Fallback Server IP address (or DNS name)
  @MappableField(key: 'server2')
  final String? fallbackServer;

  /// LDAPS TLS/SSL version. It's not recommended to use version older than 1.2!
  @MappableField(key: 'sslversion')
  final SslVersion? sslVersion;

  /// The default options for behavior of synchronizations.
  @MappableField(key: 'sync-defaults-options', hook: SyncDefaultsOptions())
  final SyncOptions? syncDefaultsOptions;

  /// Comma separated list of key=value pairs for specifying which LDAP
  /// attributes map to which PVE user field. For example, to map the LDAP
  /// attribute 'mail' to PVEs 'email', write  'email=mail'. By default, each
  /// PVE user field is represented  by an LDAP attribute of the same name.
  @MappableField(key: 'sync_attributes')
  final String? syncAttributes;

  /// Use Two-factor authentication.
  final String? tfa;

  /// LDAP user attribute name
  @MappableField(key: 'user_attr')
  final String? userAttr;

  /// The objectclasses for users.
  @MappableField(key: 'user_classes')
  final List<String>? userClasses;

  /// OpenID claim used to generate the unique username.
  @MappableField(key: 'username-claim')
  final String? usernameClaim;

  /// Verify the server's SSL certificate
  @MappableField(key: 'verify', hook: ProxmoxBoolHook())
  final bool? shouldVerify;
}

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
class SyncOptions {
  /// {@macro sync_options}
  SyncOptions({
    this.scope,
    this.removeVanished,
    @Deprecated('use removeVanished instead.') this.purge,
    @Deprecated('use removeVanished instead.') this.full,
    this.enableNew = true,
  });

  /// Enable newly synced users immediately
  @MappableField(key: 'enable-new')
  final bool? enableNew;

  /// Remove ACLs for users or groups which were removed from the config
  /// during a sync.
  @Deprecated('use removeVanished instead.')
  final bool? purge;

  /// If set, uses the LDAP Directory as source of truth, deleting users or
  /// groups not returned from the sync and removing all locally modified
  /// properties of synced users. If not set, only syncs information which is
  /// present in the synced data, and does not delete or modify anything else
  @Deprecated('use removeVanished instead.')
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
}
