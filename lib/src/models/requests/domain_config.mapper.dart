// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'domain_config.dart';

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

class ADDomainMapper extends ClassMapperBase<ADDomain> {
  ADDomainMapper._();

  static ADDomainMapper? _instance;
  static ADDomainMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ADDomainMapper._());
      LdapModeMapper.ensureInitialized();
      SyncOptionsMapper.ensureInitialized();
      SslVersionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ADDomain';

  static String _$realm(ADDomain v) => v.realm;
  static const Field<ADDomain, String> _f$realm = Field('realm', _$realm);
  static String _$primaryServer(ADDomain v) => v.primaryServer;
  static const Field<ADDomain, String> _f$primaryServer =
      Field('primaryServer', _$primaryServer, key: 'server1');
  static int _$port(ADDomain v) => v.port;
  static const Field<ADDomain, int> _f$port = Field('port', _$port);
  static LdapMode _$mode(ADDomain v) => v.mode;
  static const Field<ADDomain, LdapMode> _f$mode = Field('mode', _$mode);
  static String _$domain(ADDomain v) => v.domain;
  static const Field<ADDomain, String> _f$domain = Field('domain', _$domain);
  static String? _$comment(ADDomain v) => v.comment;
  static const Field<ADDomain, String> _f$comment =
      Field('comment', _$comment, opt: true);
  static String? _$fallbackServer(ADDomain v) => v.fallbackServer;
  static const Field<ADDomain, String> _f$fallbackServer =
      Field('fallbackServer', _$fallbackServer, key: 'server2', opt: true);
  static bool? _$isDefault(ADDomain v) => v.isDefault;
  static const Field<ADDomain, bool> _f$isDefault = Field(
      'isDefault', _$isDefault,
      key: 'default', opt: true, hook: ProxmoxBoolHook());
  static bool? _$shouldVerify(ADDomain v) => v.shouldVerify;
  static const Field<ADDomain, bool> _f$shouldVerify = Field(
      'shouldVerify', _$shouldVerify,
      key: 'verify', opt: true, hook: ProxmoxBoolHook());
  static String? _$tfa(ADDomain v) => v.tfa;
  static const Field<ADDomain, String> _f$tfa = Field('tfa', _$tfa, opt: true);
  static SyncOptions? _$syncDefaultsOptions(ADDomain v) =>
      v.syncDefaultsOptions;
  static const Field<ADDomain, SyncOptions> _f$syncDefaultsOptions = Field(
      'syncDefaultsOptions', _$syncDefaultsOptions,
      key: 'sync-defaults-options', opt: true, hook: SyncDefaultsOptions());
  static bool _$checkConnection(ADDomain v) => v.checkConnection;
  static const Field<ADDomain, bool> _f$checkConnection = Field(
      'checkConnection', _$checkConnection,
      key: 'check-connection', opt: true, def: true, hook: ProxmoxBoolHook());
  static SslVersion? _$sslVersion(ADDomain v) => v.sslVersion;
  static const Field<ADDomain, SslVersion> _f$sslVersion = Field(
      'sslVersion', _$sslVersion,
      key: 'sslversion', opt: true, def: SslVersion.tlsv1_3);
  static RealmType _$type(ADDomain v) => v.type;
  static const Field<ADDomain, RealmType> _f$type =
      Field('type', _$type, hook: DomainTypeHook());

  @override
  final MappableFields<ADDomain> fields = const {
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
    #type: _f$type,
  };

  static ADDomain _instantiate(DecodingData data) {
    return ADDomain(
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

  static ADDomain fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ADDomain>(map);
  }

  static ADDomain fromJson(String json) {
    return ensureInitialized().decodeJson<ADDomain>(json);
  }
}

mixin ADDomainMappable {
  String toJson() {
    return ADDomainMapper.ensureInitialized()
        .encodeJson<ADDomain>(this as ADDomain);
  }

  Map<String, dynamic> toMap() {
    return ADDomainMapper.ensureInitialized()
        .encodeMap<ADDomain>(this as ADDomain);
  }

  ADDomainCopyWith<ADDomain, ADDomain, ADDomain> get copyWith =>
      _ADDomainCopyWithImpl(this as ADDomain, $identity, $identity);
  @override
  String toString() {
    return ADDomainMapper.ensureInitialized().stringifyValue(this as ADDomain);
  }

  @override
  bool operator ==(Object other) {
    return ADDomainMapper.ensureInitialized()
        .equalsValue(this as ADDomain, other);
  }

  @override
  int get hashCode {
    return ADDomainMapper.ensureInitialized().hashValue(this as ADDomain);
  }
}

extension ADDomainValueCopy<$R, $Out> on ObjectCopyWith<$R, ADDomain, $Out> {
  ADDomainCopyWith<$R, ADDomain, $Out> get $asADDomain =>
      $base.as((v, t, t2) => _ADDomainCopyWithImpl(v, t, t2));
}

abstract class ADDomainCopyWith<$R, $In extends ADDomain, $Out>
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
  ADDomainCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ADDomainCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ADDomain, $Out>
    implements ADDomainCopyWith<$R, ADDomain, $Out> {
  _ADDomainCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ADDomain> $mapper =
      ADDomainMapper.ensureInitialized();
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
  ADDomain $make(CopyWithData data) => ADDomain(
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
  ADDomainCopyWith<$R2, ADDomain, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ADDomainCopyWithImpl($value, $cast, t);
}

class LdapDomainMapper extends ClassMapperBase<LdapDomain> {
  LdapDomainMapper._();

  static LdapDomainMapper? _instance;
  static LdapDomainMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LdapDomainMapper._());
      LdapModeMapper.ensureInitialized();
      SyncOptionsMapper.ensureInitialized();
      SslVersionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'LdapDomain';

  static String _$realm(LdapDomain v) => v.realm;
  static const Field<LdapDomain, String> _f$realm = Field('realm', _$realm);
  static String _$primaryServer(LdapDomain v) => v.primaryServer;
  static const Field<LdapDomain, String> _f$primaryServer =
      Field('primaryServer', _$primaryServer, key: 'server1');
  static int _$port(LdapDomain v) => v.port;
  static const Field<LdapDomain, int> _f$port = Field('port', _$port);
  static LdapMode _$mode(LdapDomain v) => v.mode;
  static const Field<LdapDomain, LdapMode> _f$mode = Field('mode', _$mode);
  static String _$baseDomainName(LdapDomain v) => v.baseDomainName;
  static const Field<LdapDomain, String> _f$baseDomainName =
      Field('baseDomainName', _$baseDomainName, key: 'base_dn');
  static String? _$userAttributeName(LdapDomain v) => v.userAttributeName;
  static const Field<LdapDomain, String> _f$userAttributeName =
      Field('userAttributeName', _$userAttributeName, key: 'user_attr');
  static String? _$comment(LdapDomain v) => v.comment;
  static const Field<LdapDomain, String> _f$comment =
      Field('comment', _$comment, opt: true);
  static String? _$fallbackServer(LdapDomain v) => v.fallbackServer;
  static const Field<LdapDomain, String> _f$fallbackServer =
      Field('fallbackServer', _$fallbackServer, key: 'server2', opt: true);
  static bool? _$isDefault(LdapDomain v) => v.isDefault;
  static const Field<LdapDomain, bool> _f$isDefault = Field(
      'isDefault', _$isDefault,
      key: 'default', opt: true, hook: ProxmoxBoolHook());
  static bool? _$shouldVerify(LdapDomain v) => v.shouldVerify;
  static const Field<LdapDomain, bool> _f$shouldVerify = Field(
      'shouldVerify', _$shouldVerify,
      key: 'verify', opt: true, hook: ProxmoxBoolHook());
  static String? _$tfa(LdapDomain v) => v.tfa;
  static const Field<LdapDomain, String> _f$tfa =
      Field('tfa', _$tfa, opt: true);
  static SyncOptions? _$syncDefaultsOptions(LdapDomain v) =>
      v.syncDefaultsOptions;
  static const Field<LdapDomain, SyncOptions> _f$syncDefaultsOptions = Field(
      'syncDefaultsOptions', _$syncDefaultsOptions,
      key: 'sync-defaults-options', opt: true, hook: SyncDefaultsOptions());
  static bool _$checkConnection(LdapDomain v) => v.checkConnection;
  static const Field<LdapDomain, bool> _f$checkConnection = Field(
      'checkConnection', _$checkConnection,
      key: 'check-connection', opt: true, def: true, hook: ProxmoxBoolHook());
  static SslVersion? _$sslVersion(LdapDomain v) => v.sslVersion;
  static const Field<LdapDomain, SslVersion> _f$sslVersion = Field(
      'sslVersion', _$sslVersion,
      key: 'sslversion', opt: true, def: SslVersion.tlsv1_3);
  static RealmType _$type(LdapDomain v) => v.type;
  static const Field<LdapDomain, RealmType> _f$type =
      Field('type', _$type, hook: DomainTypeHook());

  @override
  final MappableFields<LdapDomain> fields = const {
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
    #type: _f$type,
  };

  static LdapDomain _instantiate(DecodingData data) {
    return LdapDomain(
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

  static LdapDomain fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LdapDomain>(map);
  }

  static LdapDomain fromJson(String json) {
    return ensureInitialized().decodeJson<LdapDomain>(json);
  }
}

mixin LdapDomainMappable {
  String toJson() {
    return LdapDomainMapper.ensureInitialized()
        .encodeJson<LdapDomain>(this as LdapDomain);
  }

  Map<String, dynamic> toMap() {
    return LdapDomainMapper.ensureInitialized()
        .encodeMap<LdapDomain>(this as LdapDomain);
  }

  LdapDomainCopyWith<LdapDomain, LdapDomain, LdapDomain> get copyWith =>
      _LdapDomainCopyWithImpl(this as LdapDomain, $identity, $identity);
  @override
  String toString() {
    return LdapDomainMapper.ensureInitialized()
        .stringifyValue(this as LdapDomain);
  }

  @override
  bool operator ==(Object other) {
    return LdapDomainMapper.ensureInitialized()
        .equalsValue(this as LdapDomain, other);
  }

  @override
  int get hashCode {
    return LdapDomainMapper.ensureInitialized().hashValue(this as LdapDomain);
  }
}

extension LdapDomainValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LdapDomain, $Out> {
  LdapDomainCopyWith<$R, LdapDomain, $Out> get $asLdapDomain =>
      $base.as((v, t, t2) => _LdapDomainCopyWithImpl(v, t, t2));
}

abstract class LdapDomainCopyWith<$R, $In extends LdapDomain, $Out>
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
  LdapDomainCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LdapDomainCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LdapDomain, $Out>
    implements LdapDomainCopyWith<$R, LdapDomain, $Out> {
  _LdapDomainCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LdapDomain> $mapper =
      LdapDomainMapper.ensureInitialized();
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
  LdapDomain $make(CopyWithData data) => LdapDomain(
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
  LdapDomainCopyWith<$R2, LdapDomain, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LdapDomainCopyWithImpl($value, $cast, t);
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
  static String? _$comment(OpenId v) => v.comment;
  static const Field<OpenId, String> _f$comment =
      Field('comment', _$comment, opt: true);
  static bool? _$isDefault(OpenId v) => v.isDefault;
  static const Field<OpenId, bool> _f$isDefault = Field(
      'isDefault', _$isDefault,
      key: 'default', opt: true, hook: ProxmoxBoolHook());
  static String? _$clientKey(OpenId v) => v.clientKey;
  static const Field<OpenId, String> _f$clientKey =
      Field('clientKey', _$clientKey, key: 'client-key', opt: true);
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
  static RealmType _$type(OpenId v) => v.type;
  static const Field<OpenId, RealmType> _f$type =
      Field('type', _$type, hook: DomainTypeHook());

  @override
  final MappableFields<OpenId> fields = const {
    #realm: _f$realm,
    #issuerUrl: _f$issuerUrl,
    #clientId: _f$clientId,
    #comment: _f$comment,
    #isDefault: _f$isDefault,
    #clientKey: _f$clientKey,
    #scopes: _f$scopes,
    #autocreate: _f$autocreate,
    #usernameClaim: _f$usernameClaim,
    #prompt: _f$prompt,
    #acrValues: _f$acrValues,
    #type: _f$type,
  };

  static OpenId _instantiate(DecodingData data) {
    return OpenId(
        realm: data.dec(_f$realm),
        issuerUrl: data.dec(_f$issuerUrl),
        clientId: data.dec(_f$clientId),
        comment: data.dec(_f$comment),
        isDefault: data.dec(_f$isDefault),
        clientKey: data.dec(_f$clientKey),
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
      String? comment,
      bool? isDefault,
      String? clientKey,
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
          Object? comment = $none,
          Object? isDefault = $none,
          Object? clientKey = $none,
          String? scopes,
          bool? autocreate,
          Object? usernameClaim = $none,
          Object? prompt = $none,
          Object? acrValues = $none}) =>
      $apply(FieldCopyWithData({
        if (realm != null) #realm: realm,
        if (issuerUrl != null) #issuerUrl: issuerUrl,
        if (clientId != null) #clientId: clientId,
        if (comment != $none) #comment: comment,
        if (isDefault != $none) #isDefault: isDefault,
        if (clientKey != $none) #clientKey: clientKey,
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
      comment: data.get(#comment, or: $value.comment),
      isDefault: data.get(#isDefault, or: $value.isDefault),
      clientKey: data.get(#clientKey, or: $value.clientKey),
      scopes: data.get(#scopes, or: $value.scopes),
      autocreate: data.get(#autocreate, or: $value.autocreate),
      usernameClaim: data.get(#usernameClaim, or: $value.usernameClaim),
      prompt: data.get(#prompt, or: $value.prompt),
      acrValues: data.get(#acrValues, or: $value.acrValues));

  @override
  OpenIdCopyWith<$R2, OpenId, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _OpenIdCopyWithImpl($value, $cast, t);
}
