import 'package:dart_mappable/dart_mappable.dart';
import 'package:proxmox_client/src/hooks/hooks.dart';
import 'package:proxmox_client/src/models/models.dart';

part 'realm_config.mapper.dart';

/// Realm type
@MappableEnum()
enum RealmType {
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

/// {@template realm_config}
/// Base class for all realm configs
/// {@endtemplate}
abstract class RealmConfig {
  /// {@macro realm_config}
  RealmConfig({required this.realm, this.comment, this.isDefault});

  /// Authentication domain ID
  final String realm;

  /// A comment
  final String? comment;

  /// Use this as default realm
  @MappableField(key: 'default', hook: ProxmoxBoolHook())
  final bool? isDefault;

  /// Realm type
  RealmType get type;

  /// Export this instance to a json string
  String toJson();

  /// Export this instance to a [Map]
  Map<String, dynamic> toMap();
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

/// {@template ldap_based_config}
/// Base class for all LDAP based realm configs
/// {@endtemplate}
abstract class LdapBased extends RealmConfig {
  /// {@macro ldap_based_config}
  LdapBased({
    required super.realm,
    required this.primaryServer,
    required this.mode,
    required this.port,
    super.comment,
    super.isDefault,
    this.fallbackServer,
    this.tfa,
    this.shouldVerify,
    this.syncDefaultsOptions,
    this.checkConnection = true,
    this.sslVersion = SslVersion.tlsv1_3,
  });

  /// Server IP address (or DNS name)
  @MappableField(key: 'server1')
  final String primaryServer;

  /// Fallback Server IP address (or DNS name)
  @MappableField(key: 'server2')
  final String? fallbackServer;

  /// Server port.
  final int port;

  /// LDAP protocol mode.
  final LdapMode mode;

  /// Use Two-factor authentication.
  final String? tfa;

  /// Verify the server's SSL certificate
  @MappableField(key: 'verify', hook: ProxmoxBoolHook())
  final bool? shouldVerify;

  /// The default options for behavior of synchronizations.
  @MappableField(key: 'sync-defaults-options', hook: SyncDefaultsOptions())
  final SyncOptions? syncDefaultsOptions;

  /// Check bind connection to the server.
  @MappableField(key: 'check-connection', hook: ProxmoxBoolHook())
  final bool checkConnection;

  /// LDAPS TLS/SSL version. It's not recommended to use version older than 1.2!
  @MappableField(key: 'sslversion')
  final SslVersion? sslVersion;
}

/// {@template ad_config}
/// Microsoft Active Directory realm config
/// {@endtemplate}
@MappableClass()
class ADRealm extends LdapBased with ADRealmMappable {
  /// {@macro ad_config}
  ADRealm({
    required super.realm,
    required super.primaryServer,
    required super.port,
    required super.mode,
    required this.domain,
    super.comment,
    super.fallbackServer,
    super.isDefault,
    super.shouldVerify,
    super.tfa,
    super.syncDefaultsOptions,
    super.checkConnection,
    super.sslVersion,
  });

  /// The AD domain of the server
  final String domain;

  @override
  RealmType get type => RealmType.ad;
}

/// {@template ad_config}
/// LDAP realm config
/// {@endtemplate}
@MappableClass()
class LdapRealm extends LdapBased with LdapRealmMappable {
  /// {@macro ldap_config}
  LdapRealm({
    required super.realm,
    required super.primaryServer,
    required super.port,
    required super.mode,
    required this.baseDomainName,
    required this.userAttributeName,
    super.comment,
    super.fallbackServer,
    super.isDefault,
    super.shouldVerify,
    super.tfa,
    super.syncDefaultsOptions,
    super.checkConnection,
    super.sslVersion,
  });

  /// LDAP base domain name
  @MappableField(key: 'base_dn')
  final String baseDomainName;

  /// LDAP user attribute name
  @MappableField(key: 'user_attr')
  final String? userAttributeName;

  @override
  RealmType get type => RealmType.ldap;
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

/// {@template openid_config}
/// OpenID realm config
/// {@endtemplate}
@MappableClass()
class OpenId extends RealmConfig with OpenIdMappable {
  /// {@macro open_config}
  OpenId({
    required super.realm,
    required this.issuerUrl,
    required this.clientId,
    super.comment,
    super.isDefault,
    this.clientKey,
    this.scopes = 'email profile',
    this.autocreate = false,
    this.usernameClaim,
    this.prompt,
    this.acrValues,
  });

  /// OpenID issuer URL
  @MappableField(key: 'issuer-url')
  final String issuerUrl;

  /// OpenID Client ID
  @MappableField(key: 'client-id')
  final String clientId;

  /// OpenID Client ket
  @MappableField(key: 'client-key')
  final String? clientKey;

  /// Automatically create users if they do not exist.
  @MappableField(hook: ProxmoxBoolHook())
  final bool autocreate;

  /// The username-claim setting allows you to use other attributes for the
  /// username mapping. Setting it to username is preferred if the OpenID
  /// Connect server provides that attribute and guarantees its uniqueness.
  @MappableField(key: 'username-claim')
  final String? usernameClaim;

  /// Specifies the scopes (user details) that should be authorized and
  /// returned, for example 'email' or 'profile'.
  final String scopes;

  /// Specifies whether the Authorization Server prompts the End-User for
  /// reauthentication and consent.
  final Prompt? prompt;

  /// Specifies the Authentication Context Class Reference values that the
  /// Authorization Server is being requested to use for the Auth Request.
  ///
  /// Throws:
  ///
  /// * [FormatException] if acr-values doesn't follow the following regex
  /// `^[^\x00-\x1F\x7F <>#"]*$`
  @MappableField(key: 'acr-values', hook: AcrValuesHook())
  final String? acrValues;

  @override
  RealmType get type => RealmType.openid;
}
