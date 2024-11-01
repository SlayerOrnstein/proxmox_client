// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'realm_config.dart';

class RealmTypeMapper extends EnumMapper<RealmType> {
  RealmTypeMapper._();

  static RealmTypeMapper? _instance;
  static RealmTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RealmTypeMapper._());
    }
    return _instance!;
  }

  static RealmType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  RealmType decode(dynamic value) {
    switch (value) {
      case 'ad':
        return RealmType.ad;
      case 'ldap':
        return RealmType.ldap;
      case 'openid':
        return RealmType.openid;
      case 'pam':
        return RealmType.pam;
      case 'pve':
        return RealmType.pve;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(RealmType self) {
    switch (self) {
      case RealmType.ad:
        return 'ad';
      case RealmType.ldap:
        return 'ldap';
      case RealmType.openid:
        return 'openid';
      case RealmType.pam:
        return 'pam';
      case RealmType.pve:
        return 'pve';
    }
  }
}

extension RealmTypeMapperExtension on RealmType {
  String toValue() {
    RealmTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<RealmType>(this) as String;
  }
}

class LdapModeMapper extends EnumMapper<LdapMode> {
  LdapModeMapper._();

  static LdapModeMapper? _instance;
  static LdapModeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LdapModeMapper._());
    }
    return _instance!;
  }

  static LdapMode fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  LdapMode decode(dynamic value) {
    switch (value) {
      case 'ldap':
        return LdapMode.ldap;
      case 'ldaps':
        return LdapMode.ldaps;
      case 'ldap+starttls':
        return LdapMode.ldapStarTTls;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(LdapMode self) {
    switch (self) {
      case LdapMode.ldap:
        return 'ldap';
      case LdapMode.ldaps:
        return 'ldaps';
      case LdapMode.ldapStarTTls:
        return 'ldap+starttls';
    }
  }
}

extension LdapModeMapperExtension on LdapMode {
  dynamic toValue() {
    LdapModeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<LdapMode>(this);
  }
}

class SslVersionMapper extends EnumMapper<SslVersion> {
  SslVersionMapper._();

  static SslVersionMapper? _instance;
  static SslVersionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SslVersionMapper._());
    }
    return _instance!;
  }

  static SslVersion fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  SslVersion decode(dynamic value) {
    switch (value) {
      case 'tlsv1':
        return SslVersion.tlsv1;
      case 'tlsv1_1':
        return SslVersion.tlsv1_1;
      case 'tlsv1_2':
        return SslVersion.tlsv1_2;
      case 'tlsv1_3':
        return SslVersion.tlsv1_3;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(SslVersion self) {
    switch (self) {
      case SslVersion.tlsv1:
        return 'tlsv1';
      case SslVersion.tlsv1_1:
        return 'tlsv1_1';
      case SslVersion.tlsv1_2:
        return 'tlsv1_2';
      case SslVersion.tlsv1_3:
        return 'tlsv1_3';
    }
  }
}

extension SslVersionMapperExtension on SslVersion {
  String toValue() {
    SslVersionMapper.ensureInitialized();
    return MapperContainer.globals.toValue<SslVersion>(this) as String;
  }
}

class PromptMapper extends EnumMapper<Prompt> {
  PromptMapper._();

  static PromptMapper? _instance;
  static PromptMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PromptMapper._());
    }
    return _instance!;
  }

  static Prompt fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  Prompt decode(dynamic value) {
    switch (value) {
      case 'none':
        return Prompt.none;
      case 'login':
        return Prompt.login;
      case 'consent':
        return Prompt.consent;
      case 'select_account':
        return Prompt.selectAccount;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(Prompt self) {
    switch (self) {
      case Prompt.none:
        return 'none';
      case Prompt.login:
        return 'login';
      case Prompt.consent:
        return 'consent';
      case Prompt.selectAccount:
        return 'select_account';
    }
  }
}

extension PromptMapperExtension on Prompt {
  dynamic toValue() {
    PromptMapper.ensureInitialized();
    return MapperContainer.globals.toValue<Prompt>(this);
  }
}

class ADRealmMapper extends ClassMapperBase<ADRealm> {
  ADRealmMapper._();

  static ADRealmMapper? _instance;
  static ADRealmMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ADRealmMapper._());
      LdapModeMapper.ensureInitialized();
      SyncOptionsMapper.ensureInitialized();
      SslVersionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ADRealm';

  static String _$realm(ADRealm v) => v.realm;
  static const Field<ADRealm, String> _f$realm = Field('realm', _$realm);
  static String _$primaryServer(ADRealm v) => v.primaryServer;
  static const Field<ADRealm, String> _f$primaryServer =
      Field('primaryServer', _$primaryServer, key: 'server1');
  static int _$port(ADRealm v) => v.port;
  static const Field<ADRealm, int> _f$port = Field('port', _$port);
  static LdapMode _$mode(ADRealm v) => v.mode;
  static const Field<ADRealm, LdapMode> _f$mode = Field('mode', _$mode);
  static String _$domain(ADRealm v) => v.domain;
  static const Field<ADRealm, String> _f$domain = Field('domain', _$domain);
  static String? _$comment(ADRealm v) => v.comment;
  static const Field<ADRealm, String> _f$comment =
      Field('comment', _$comment, opt: true);
  static String? _$fallbackServer(ADRealm v) => v.fallbackServer;
  static const Field<ADRealm, String> _f$fallbackServer =
      Field('fallbackServer', _$fallbackServer, key: 'server2', opt: true);
  static bool? _$isDefault(ADRealm v) => v.isDefault;
  static const Field<ADRealm, bool> _f$isDefault = Field(
      'isDefault', _$isDefault,
      key: 'default', opt: true, hook: ProxmoxBoolHook());
  static bool? _$shouldVerify(ADRealm v) => v.shouldVerify;
  static const Field<ADRealm, bool> _f$shouldVerify = Field(
      'shouldVerify', _$shouldVerify,
      key: 'verify', opt: true, hook: ProxmoxBoolHook());
  static String? _$tfa(ADRealm v) => v.tfa;
  static const Field<ADRealm, String> _f$tfa = Field('tfa', _$tfa, opt: true);
  static SyncOptions? _$syncDefaultsOptions(ADRealm v) => v.syncDefaultsOptions;
  static const Field<ADRealm, SyncOptions> _f$syncDefaultsOptions = Field(
      'syncDefaultsOptions', _$syncDefaultsOptions,
      key: 'sync-defaults-options', opt: true, hook: SyncDefaultsOptions());
  static bool _$checkConnection(ADRealm v) => v.checkConnection;
  static const Field<ADRealm, bool> _f$checkConnection = Field(
      'checkConnection', _$checkConnection,
      key: 'check-connection', opt: true, def: true, hook: ProxmoxBoolHook());
  static SslVersion? _$sslVersion(ADRealm v) => v.sslVersion;
  static const Field<ADRealm, SslVersion> _f$sslVersion = Field(
      'sslVersion', _$sslVersion,
      key: 'sslversion', opt: true, def: SslVersion.tlsv1_3);

  @override
  final MappableFields<ADRealm> fields = const {
    #realm: _f$realm,
    #primaryServer: _f$primaryServer,
    #port: _f$port,
    #mode: _f$mode,
    #domain: _f$domain,
    #comment: _f$comment,
    #fallbackServer: _f$fallbackServer,
    #isDefault: _f$isDefault,
    #shouldVerify: _f$shouldVerify,
    #tfa: _f$tfa,
    #syncDefaultsOptions: _f$syncDefaultsOptions,
    #checkConnection: _f$checkConnection,
    #sslVersion: _f$sslVersion,
  };

  static ADRealm _instantiate(DecodingData data) {
    return ADRealm(
        realm: data.dec(_f$realm),
        primaryServer: data.dec(_f$primaryServer),
        port: data.dec(_f$port),
        mode: data.dec(_f$mode),
        domain: data.dec(_f$domain),
        comment: data.dec(_f$comment),
        fallbackServer: data.dec(_f$fallbackServer),
        isDefault: data.dec(_f$isDefault),
        shouldVerify: data.dec(_f$shouldVerify),
        tfa: data.dec(_f$tfa),
        syncDefaultsOptions: data.dec(_f$syncDefaultsOptions),
        checkConnection: data.dec(_f$checkConnection),
        sslVersion: data.dec(_f$sslVersion));
  }

  @override
  final Function instantiate = _instantiate;

  static ADRealm fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ADRealm>(map);
  }

  static ADRealm fromJson(String json) {
    return ensureInitialized().decodeJson<ADRealm>(json);
  }
}

mixin ADRealmMappable {
  String toJson() {
    return ADRealmMapper.ensureInitialized()
        .encodeJson<ADRealm>(this as ADRealm);
  }

  Map<String, dynamic> toMap() {
    return ADRealmMapper.ensureInitialized()
        .encodeMap<ADRealm>(this as ADRealm);
  }

  ADRealmCopyWith<ADRealm, ADRealm, ADRealm> get copyWith =>
      _ADRealmCopyWithImpl(this as ADRealm, $identity, $identity);
  @override
  String toString() {
    return ADRealmMapper.ensureInitialized().stringifyValue(this as ADRealm);
  }

  @override
  bool operator ==(Object other) {
    return ADRealmMapper.ensureInitialized()
        .equalsValue(this as ADRealm, other);
  }

  @override
  int get hashCode {
    return ADRealmMapper.ensureInitialized().hashValue(this as ADRealm);
  }
}

extension ADRealmValueCopy<$R, $Out> on ObjectCopyWith<$R, ADRealm, $Out> {
  ADRealmCopyWith<$R, ADRealm, $Out> get $asADRealm =>
      $base.as((v, t, t2) => _ADRealmCopyWithImpl(v, t, t2));
}

abstract class ADRealmCopyWith<$R, $In extends ADRealm, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  SyncOptionsCopyWith<$R, SyncOptions, SyncOptions>? get syncDefaultsOptions;
  $R call(
      {String? realm,
      String? primaryServer,
      int? port,
      LdapMode? mode,
      String? domain,
      String? comment,
      String? fallbackServer,
      bool? isDefault,
      bool? shouldVerify,
      String? tfa,
      SyncOptions? syncDefaultsOptions,
      bool? checkConnection,
      SslVersion? sslVersion});
  ADRealmCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ADRealmCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ADRealm, $Out>
    implements ADRealmCopyWith<$R, ADRealm, $Out> {
  _ADRealmCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ADRealm> $mapper =
      ADRealmMapper.ensureInitialized();
  @override
  SyncOptionsCopyWith<$R, SyncOptions, SyncOptions>? get syncDefaultsOptions =>
      $value.syncDefaultsOptions?.copyWith
          .$chain((v) => call(syncDefaultsOptions: v));
  @override
  $R call(
          {String? realm,
          String? primaryServer,
          int? port,
          LdapMode? mode,
          String? domain,
          Object? comment = $none,
          Object? fallbackServer = $none,
          Object? isDefault = $none,
          Object? shouldVerify = $none,
          Object? tfa = $none,
          Object? syncDefaultsOptions = $none,
          bool? checkConnection,
          Object? sslVersion = $none}) =>
      $apply(FieldCopyWithData({
        if (realm != null) #realm: realm,
        if (primaryServer != null) #primaryServer: primaryServer,
        if (port != null) #port: port,
        if (mode != null) #mode: mode,
        if (domain != null) #domain: domain,
        if (comment != $none) #comment: comment,
        if (fallbackServer != $none) #fallbackServer: fallbackServer,
        if (isDefault != $none) #isDefault: isDefault,
        if (shouldVerify != $none) #shouldVerify: shouldVerify,
        if (tfa != $none) #tfa: tfa,
        if (syncDefaultsOptions != $none)
          #syncDefaultsOptions: syncDefaultsOptions,
        if (checkConnection != null) #checkConnection: checkConnection,
        if (sslVersion != $none) #sslVersion: sslVersion
      }));
  @override
  ADRealm $make(CopyWithData data) => ADRealm(
      realm: data.get(#realm, or: $value.realm),
      primaryServer: data.get(#primaryServer, or: $value.primaryServer),
      port: data.get(#port, or: $value.port),
      mode: data.get(#mode, or: $value.mode),
      domain: data.get(#domain, or: $value.domain),
      comment: data.get(#comment, or: $value.comment),
      fallbackServer: data.get(#fallbackServer, or: $value.fallbackServer),
      isDefault: data.get(#isDefault, or: $value.isDefault),
      shouldVerify: data.get(#shouldVerify, or: $value.shouldVerify),
      tfa: data.get(#tfa, or: $value.tfa),
      syncDefaultsOptions:
          data.get(#syncDefaultsOptions, or: $value.syncDefaultsOptions),
      checkConnection: data.get(#checkConnection, or: $value.checkConnection),
      sslVersion: data.get(#sslVersion, or: $value.sslVersion));

  @override
  ADRealmCopyWith<$R2, ADRealm, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ADRealmCopyWithImpl($value, $cast, t);
}

class LdapRealmMapper extends ClassMapperBase<LdapRealm> {
  LdapRealmMapper._();

  static LdapRealmMapper? _instance;
  static LdapRealmMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LdapRealmMapper._());
      LdapModeMapper.ensureInitialized();
      SyncOptionsMapper.ensureInitialized();
      SslVersionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'LdapRealm';

  static String _$realm(LdapRealm v) => v.realm;
  static const Field<LdapRealm, String> _f$realm = Field('realm', _$realm);
  static String _$primaryServer(LdapRealm v) => v.primaryServer;
  static const Field<LdapRealm, String> _f$primaryServer =
      Field('primaryServer', _$primaryServer, key: 'server1');
  static int _$port(LdapRealm v) => v.port;
  static const Field<LdapRealm, int> _f$port = Field('port', _$port);
  static LdapMode _$mode(LdapRealm v) => v.mode;
  static const Field<LdapRealm, LdapMode> _f$mode = Field('mode', _$mode);
  static String _$baseDomainName(LdapRealm v) => v.baseDomainName;
  static const Field<LdapRealm, String> _f$baseDomainName =
      Field('baseDomainName', _$baseDomainName, key: 'base_dn');
  static String? _$userAttributeName(LdapRealm v) => v.userAttributeName;
  static const Field<LdapRealm, String> _f$userAttributeName =
      Field('userAttributeName', _$userAttributeName, key: 'user_attr');
  static String? _$comment(LdapRealm v) => v.comment;
  static const Field<LdapRealm, String> _f$comment =
      Field('comment', _$comment, opt: true);
  static String? _$fallbackServer(LdapRealm v) => v.fallbackServer;
  static const Field<LdapRealm, String> _f$fallbackServer =
      Field('fallbackServer', _$fallbackServer, key: 'server2', opt: true);
  static bool? _$isDefault(LdapRealm v) => v.isDefault;
  static const Field<LdapRealm, bool> _f$isDefault = Field(
      'isDefault', _$isDefault,
      key: 'default', opt: true, hook: ProxmoxBoolHook());
  static bool? _$shouldVerify(LdapRealm v) => v.shouldVerify;
  static const Field<LdapRealm, bool> _f$shouldVerify = Field(
      'shouldVerify', _$shouldVerify,
      key: 'verify', opt: true, hook: ProxmoxBoolHook());
  static String? _$tfa(LdapRealm v) => v.tfa;
  static const Field<LdapRealm, String> _f$tfa = Field('tfa', _$tfa, opt: true);
  static SyncOptions? _$syncDefaultsOptions(LdapRealm v) =>
      v.syncDefaultsOptions;
  static const Field<LdapRealm, SyncOptions> _f$syncDefaultsOptions = Field(
      'syncDefaultsOptions', _$syncDefaultsOptions,
      key: 'sync-defaults-options', opt: true, hook: SyncDefaultsOptions());
  static bool _$checkConnection(LdapRealm v) => v.checkConnection;
  static const Field<LdapRealm, bool> _f$checkConnection = Field(
      'checkConnection', _$checkConnection,
      key: 'check-connection', opt: true, def: true, hook: ProxmoxBoolHook());
  static SslVersion? _$sslVersion(LdapRealm v) => v.sslVersion;
  static const Field<LdapRealm, SslVersion> _f$sslVersion = Field(
      'sslVersion', _$sslVersion,
      key: 'sslversion', opt: true, def: SslVersion.tlsv1_3);

  @override
  final MappableFields<LdapRealm> fields = const {
    #realm: _f$realm,
    #primaryServer: _f$primaryServer,
    #port: _f$port,
    #mode: _f$mode,
    #baseDomainName: _f$baseDomainName,
    #userAttributeName: _f$userAttributeName,
    #comment: _f$comment,
    #fallbackServer: _f$fallbackServer,
    #isDefault: _f$isDefault,
    #shouldVerify: _f$shouldVerify,
    #tfa: _f$tfa,
    #syncDefaultsOptions: _f$syncDefaultsOptions,
    #checkConnection: _f$checkConnection,
    #sslVersion: _f$sslVersion,
  };

  static LdapRealm _instantiate(DecodingData data) {
    return LdapRealm(
        realm: data.dec(_f$realm),
        primaryServer: data.dec(_f$primaryServer),
        port: data.dec(_f$port),
        mode: data.dec(_f$mode),
        baseDomainName: data.dec(_f$baseDomainName),
        userAttributeName: data.dec(_f$userAttributeName),
        comment: data.dec(_f$comment),
        fallbackServer: data.dec(_f$fallbackServer),
        isDefault: data.dec(_f$isDefault),
        shouldVerify: data.dec(_f$shouldVerify),
        tfa: data.dec(_f$tfa),
        syncDefaultsOptions: data.dec(_f$syncDefaultsOptions),
        checkConnection: data.dec(_f$checkConnection),
        sslVersion: data.dec(_f$sslVersion));
  }

  @override
  final Function instantiate = _instantiate;

  static LdapRealm fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LdapRealm>(map);
  }

  static LdapRealm fromJson(String json) {
    return ensureInitialized().decodeJson<LdapRealm>(json);
  }
}

mixin LdapRealmMappable {
  String toJson() {
    return LdapRealmMapper.ensureInitialized()
        .encodeJson<LdapRealm>(this as LdapRealm);
  }

  Map<String, dynamic> toMap() {
    return LdapRealmMapper.ensureInitialized()
        .encodeMap<LdapRealm>(this as LdapRealm);
  }

  LdapRealmCopyWith<LdapRealm, LdapRealm, LdapRealm> get copyWith =>
      _LdapRealmCopyWithImpl(this as LdapRealm, $identity, $identity);
  @override
  String toString() {
    return LdapRealmMapper.ensureInitialized()
        .stringifyValue(this as LdapRealm);
  }

  @override
  bool operator ==(Object other) {
    return LdapRealmMapper.ensureInitialized()
        .equalsValue(this as LdapRealm, other);
  }

  @override
  int get hashCode {
    return LdapRealmMapper.ensureInitialized().hashValue(this as LdapRealm);
  }
}

extension LdapRealmValueCopy<$R, $Out> on ObjectCopyWith<$R, LdapRealm, $Out> {
  LdapRealmCopyWith<$R, LdapRealm, $Out> get $asLdapRealm =>
      $base.as((v, t, t2) => _LdapRealmCopyWithImpl(v, t, t2));
}

abstract class LdapRealmCopyWith<$R, $In extends LdapRealm, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  SyncOptionsCopyWith<$R, SyncOptions, SyncOptions>? get syncDefaultsOptions;
  $R call(
      {String? realm,
      String? primaryServer,
      int? port,
      LdapMode? mode,
      String? baseDomainName,
      String? userAttributeName,
      String? comment,
      String? fallbackServer,
      bool? isDefault,
      bool? shouldVerify,
      String? tfa,
      SyncOptions? syncDefaultsOptions,
      bool? checkConnection,
      SslVersion? sslVersion});
  LdapRealmCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LdapRealmCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LdapRealm, $Out>
    implements LdapRealmCopyWith<$R, LdapRealm, $Out> {
  _LdapRealmCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LdapRealm> $mapper =
      LdapRealmMapper.ensureInitialized();
  @override
  SyncOptionsCopyWith<$R, SyncOptions, SyncOptions>? get syncDefaultsOptions =>
      $value.syncDefaultsOptions?.copyWith
          .$chain((v) => call(syncDefaultsOptions: v));
  @override
  $R call(
          {String? realm,
          String? primaryServer,
          int? port,
          LdapMode? mode,
          String? baseDomainName,
          Object? userAttributeName = $none,
          Object? comment = $none,
          Object? fallbackServer = $none,
          Object? isDefault = $none,
          Object? shouldVerify = $none,
          Object? tfa = $none,
          Object? syncDefaultsOptions = $none,
          bool? checkConnection,
          Object? sslVersion = $none}) =>
      $apply(FieldCopyWithData({
        if (realm != null) #realm: realm,
        if (primaryServer != null) #primaryServer: primaryServer,
        if (port != null) #port: port,
        if (mode != null) #mode: mode,
        if (baseDomainName != null) #baseDomainName: baseDomainName,
        if (userAttributeName != $none) #userAttributeName: userAttributeName,
        if (comment != $none) #comment: comment,
        if (fallbackServer != $none) #fallbackServer: fallbackServer,
        if (isDefault != $none) #isDefault: isDefault,
        if (shouldVerify != $none) #shouldVerify: shouldVerify,
        if (tfa != $none) #tfa: tfa,
        if (syncDefaultsOptions != $none)
          #syncDefaultsOptions: syncDefaultsOptions,
        if (checkConnection != null) #checkConnection: checkConnection,
        if (sslVersion != $none) #sslVersion: sslVersion
      }));
  @override
  LdapRealm $make(CopyWithData data) => LdapRealm(
      realm: data.get(#realm, or: $value.realm),
      primaryServer: data.get(#primaryServer, or: $value.primaryServer),
      port: data.get(#port, or: $value.port),
      mode: data.get(#mode, or: $value.mode),
      baseDomainName: data.get(#baseDomainName, or: $value.baseDomainName),
      userAttributeName:
          data.get(#userAttributeName, or: $value.userAttributeName),
      comment: data.get(#comment, or: $value.comment),
      fallbackServer: data.get(#fallbackServer, or: $value.fallbackServer),
      isDefault: data.get(#isDefault, or: $value.isDefault),
      shouldVerify: data.get(#shouldVerify, or: $value.shouldVerify),
      tfa: data.get(#tfa, or: $value.tfa),
      syncDefaultsOptions:
          data.get(#syncDefaultsOptions, or: $value.syncDefaultsOptions),
      checkConnection: data.get(#checkConnection, or: $value.checkConnection),
      sslVersion: data.get(#sslVersion, or: $value.sslVersion));

  @override
  LdapRealmCopyWith<$R2, LdapRealm, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LdapRealmCopyWithImpl($value, $cast, t);
}

class OpenIdMapper extends ClassMapperBase<OpenId> {
  OpenIdMapper._();

  static OpenIdMapper? _instance;
  static OpenIdMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OpenIdMapper._());
      PromptMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'OpenId';

  static String _$realm(OpenId v) => v.realm;
  static const Field<OpenId, String> _f$realm = Field('realm', _$realm);
  static String _$issuerUrl(OpenId v) => v.issuerUrl;
  static const Field<OpenId, String> _f$issuerUrl =
      Field('issuerUrl', _$issuerUrl, key: 'issuer-url');
  static String _$clientId(OpenId v) => v.clientId;
  static const Field<OpenId, String> _f$clientId =
      Field('clientId', _$clientId, key: 'client-id');
  static String _$clientKey(OpenId v) => v.clientKey;
  static const Field<OpenId, String> _f$clientKey =
      Field('clientKey', _$clientKey, key: 'client-key');
  static String? _$comment(OpenId v) => v.comment;
  static const Field<OpenId, String> _f$comment =
      Field('comment', _$comment, opt: true);
  static bool? _$isDefault(OpenId v) => v.isDefault;
  static const Field<OpenId, bool> _f$isDefault = Field(
      'isDefault', _$isDefault,
      key: 'default', opt: true, hook: ProxmoxBoolHook());
  static String _$scopes(OpenId v) => v.scopes;
  static const Field<OpenId, String> _f$scopes =
      Field('scopes', _$scopes, opt: true, def: 'email profile');
  static bool _$autocreate(OpenId v) => v.autocreate;
  static const Field<OpenId, bool> _f$autocreate = Field(
      'autocreate', _$autocreate,
      opt: true, def: false, hook: ProxmoxBoolHook());
  static String? _$usernameClaim(OpenId v) => v.usernameClaim;
  static const Field<OpenId, String> _f$usernameClaim =
      Field('usernameClaim', _$usernameClaim, key: 'username-claim', opt: true);
  static Prompt? _$prompt(OpenId v) => v.prompt;
  static const Field<OpenId, Prompt> _f$prompt =
      Field('prompt', _$prompt, opt: true);
  static String? _$acrValues(OpenId v) => v.acrValues;
  static const Field<OpenId, String> _f$acrValues = Field(
      'acrValues', _$acrValues,
      key: 'acr-values', opt: true, hook: AcrValuesHook());

  @override
  final MappableFields<OpenId> fields = const {
    #realm: _f$realm,
    #issuerUrl: _f$issuerUrl,
    #clientId: _f$clientId,
    #clientKey: _f$clientKey,
    #comment: _f$comment,
    #isDefault: _f$isDefault,
    #scopes: _f$scopes,
    #autocreate: _f$autocreate,
    #usernameClaim: _f$usernameClaim,
    #prompt: _f$prompt,
    #acrValues: _f$acrValues,
  };

  static OpenId _instantiate(DecodingData data) {
    return OpenId(
        realm: data.dec(_f$realm),
        issuerUrl: data.dec(_f$issuerUrl),
        clientId: data.dec(_f$clientId),
        clientKey: data.dec(_f$clientKey),
        comment: data.dec(_f$comment),
        isDefault: data.dec(_f$isDefault),
        scopes: data.dec(_f$scopes),
        autocreate: data.dec(_f$autocreate),
        usernameClaim: data.dec(_f$usernameClaim),
        prompt: data.dec(_f$prompt),
        acrValues: data.dec(_f$acrValues));
  }

  @override
  final Function instantiate = _instantiate;

  static OpenId fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<OpenId>(map);
  }

  static OpenId fromJson(String json) {
    return ensureInitialized().decodeJson<OpenId>(json);
  }
}

mixin OpenIdMappable {
  String toJson() {
    return OpenIdMapper.ensureInitialized().encodeJson<OpenId>(this as OpenId);
  }

  Map<String, dynamic> toMap() {
    return OpenIdMapper.ensureInitialized().encodeMap<OpenId>(this as OpenId);
  }

  OpenIdCopyWith<OpenId, OpenId, OpenId> get copyWith =>
      _OpenIdCopyWithImpl(this as OpenId, $identity, $identity);
  @override
  String toString() {
    return OpenIdMapper.ensureInitialized().stringifyValue(this as OpenId);
  }

  @override
  bool operator ==(Object other) {
    return OpenIdMapper.ensureInitialized().equalsValue(this as OpenId, other);
  }

  @override
  int get hashCode {
    return OpenIdMapper.ensureInitialized().hashValue(this as OpenId);
  }
}

extension OpenIdValueCopy<$R, $Out> on ObjectCopyWith<$R, OpenId, $Out> {
  OpenIdCopyWith<$R, OpenId, $Out> get $asOpenId =>
      $base.as((v, t, t2) => _OpenIdCopyWithImpl(v, t, t2));
}

abstract class OpenIdCopyWith<$R, $In extends OpenId, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? realm,
      String? issuerUrl,
      String? clientId,
      String? clientKey,
      String? comment,
      bool? isDefault,
      String? scopes,
      bool? autocreate,
      String? usernameClaim,
      Prompt? prompt,
      String? acrValues});
  OpenIdCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _OpenIdCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, OpenId, $Out>
    implements OpenIdCopyWith<$R, OpenId, $Out> {
  _OpenIdCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<OpenId> $mapper = OpenIdMapper.ensureInitialized();
  @override
  $R call(
          {String? realm,
          String? issuerUrl,
          String? clientId,
          String? clientKey,
          Object? comment = $none,
          Object? isDefault = $none,
          String? scopes,
          bool? autocreate,
          Object? usernameClaim = $none,
          Object? prompt = $none,
          Object? acrValues = $none}) =>
      $apply(FieldCopyWithData({
        if (realm != null) #realm: realm,
        if (issuerUrl != null) #issuerUrl: issuerUrl,
        if (clientId != null) #clientId: clientId,
        if (clientKey != null) #clientKey: clientKey,
        if (comment != $none) #comment: comment,
        if (isDefault != $none) #isDefault: isDefault,
        if (scopes != null) #scopes: scopes,
        if (autocreate != null) #autocreate: autocreate,
        if (usernameClaim != $none) #usernameClaim: usernameClaim,
        if (prompt != $none) #prompt: prompt,
        if (acrValues != $none) #acrValues: acrValues
      }));
  @override
  OpenId $make(CopyWithData data) => OpenId(
      realm: data.get(#realm, or: $value.realm),
      issuerUrl: data.get(#issuerUrl, or: $value.issuerUrl),
      clientId: data.get(#clientId, or: $value.clientId),
      clientKey: data.get(#clientKey, or: $value.clientKey),
      comment: data.get(#comment, or: $value.comment),
      isDefault: data.get(#isDefault, or: $value.isDefault),
      scopes: data.get(#scopes, or: $value.scopes),
      autocreate: data.get(#autocreate, or: $value.autocreate),
      usernameClaim: data.get(#usernameClaim, or: $value.usernameClaim),
      prompt: data.get(#prompt, or: $value.prompt),
      acrValues: data.get(#acrValues, or: $value.acrValues));

  @override
  OpenIdCopyWith<$R2, OpenId, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _OpenIdCopyWithImpl($value, $cast, t);
}
