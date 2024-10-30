// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'create_domain.dart';

class DomainTypeMapper extends EnumMapper<DomainType> {
  DomainTypeMapper._();

  static DomainTypeMapper? _instance;
  static DomainTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DomainTypeMapper._());
    }
    return _instance!;
  }

  static DomainType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  DomainType decode(dynamic value) {
    switch (value) {
      case 'ad':
        return DomainType.ad;
      case 'ldap':
        return DomainType.ldap;
      case 'openid':
        return DomainType.openid;
      case 'pam':
        return DomainType.pam;
      case 'pve':
        return DomainType.pve;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(DomainType self) {
    switch (self) {
      case DomainType.ad:
        return 'ad';
      case DomainType.ldap:
        return 'ldap';
      case DomainType.openid:
        return 'openid';
      case DomainType.pam:
        return 'pam';
      case DomainType.pve:
        return 'pve';
    }
  }
}

extension DomainTypeMapperExtension on DomainType {
  String toValue() {
    DomainTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<DomainType>(this) as String;
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

class CreateDomainMapper extends ClassMapperBase<CreateDomain> {
  CreateDomainMapper._();

  static CreateDomainMapper? _instance;
  static CreateDomainMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CreateDomainMapper._());
      DomainTypeMapper.ensureInitialized();
      LdapModeMapper.ensureInitialized();
      PromptMapper.ensureInitialized();
      SslVersionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CreateDomain';

  static String _$realm(CreateDomain v) => v.realm;
  static const Field<CreateDomain, String> _f$realm = Field('realm', _$realm);
  static DomainType _$type(CreateDomain v) => v.type;
  static const Field<CreateDomain, DomainType> _f$type = Field('type', _$type);
  static String? _$acrValues(CreateDomain v) => v.acrValues;
  static const Field<CreateDomain, String> _f$acrValues = Field(
      'acrValues', _$acrValues,
      key: 'acr-values', opt: true, hook: AcrValuesHook());
  static bool? _$autocreate(CreateDomain v) => v.autocreate;
  static const Field<CreateDomain, bool> _f$autocreate =
      Field('autocreate', _$autocreate, opt: true, hook: ProxmoxBoolHook());
  static String? _$baseDn(CreateDomain v) => v.baseDn;
  static const Field<CreateDomain, String> _f$baseDn =
      Field('baseDn', _$baseDn, key: 'base_dn', opt: true);
  static String? _$bindDn(CreateDomain v) => v.bindDn;
  static const Field<CreateDomain, String> _f$bindDn =
      Field('bindDn', _$bindDn, key: 'bind_dn', opt: true);
  static String? _$capath(CreateDomain v) => v.capath;
  static const Field<CreateDomain, String> _f$capath =
      Field('capath', _$capath, opt: true);
  static bool? _$isCaseSensitive(CreateDomain v) => v.isCaseSensitive;
  static const Field<CreateDomain, bool> _f$isCaseSensitive = Field(
      'isCaseSensitive', _$isCaseSensitive,
      key: 'case-sensitive', opt: true, hook: ProxmoxBoolHook());
  static String? _$cert(CreateDomain v) => v.cert;
  static const Field<CreateDomain, String> _f$cert =
      Field('cert', _$cert, opt: true);
  static String? _$certKey(CreateDomain v) => v.certKey;
  static const Field<CreateDomain, String> _f$certKey =
      Field('certKey', _$certKey, opt: true);
  static bool? _$checkConnection(CreateDomain v) => v.checkConnection;
  static const Field<CreateDomain, bool> _f$checkConnection = Field(
      'checkConnection', _$checkConnection,
      key: 'check-connection', opt: true, hook: ProxmoxBoolHook());
  static String? _$clientId(CreateDomain v) => v.clientId;
  static const Field<CreateDomain, String> _f$clientId =
      Field('clientId', _$clientId, key: 'client-id', opt: true);
  static String? _$clientKey(CreateDomain v) => v.clientKey;
  static const Field<CreateDomain, String> _f$clientKey =
      Field('clientKey', _$clientKey, key: 'client-key', opt: true);
  static String? _$comment(CreateDomain v) => v.comment;
  static const Field<CreateDomain, String> _f$comment =
      Field('comment', _$comment, opt: true);
  static bool? _$isDefault(CreateDomain v) => v.isDefault;
  static const Field<CreateDomain, bool> _f$isDefault = Field(
      'isDefault', _$isDefault,
      key: 'default', opt: true, hook: ProxmoxBoolHook());
  static String? _$domain(CreateDomain v) => v.domain;
  static const Field<CreateDomain, String> _f$domain =
      Field('domain', _$domain, opt: true, hook: DomainHook());
  static String? _$filter(CreateDomain v) => v.filter;
  static const Field<CreateDomain, String> _f$filter =
      Field('filter', _$filter, opt: true);
  static List<String>? _$groupClasses(CreateDomain v) => v.groupClasses;
  static const Field<CreateDomain, List<String>> _f$groupClasses = Field(
      'groupClasses', _$groupClasses,
      key: 'group_classes', opt: true, hook: GroupClasses());
  static String? _$groupDn(CreateDomain v) => v.groupDn;
  static const Field<CreateDomain, String> _f$groupDn =
      Field('groupDn', _$groupDn, key: 'group_dn', opt: true);
  static String? _$groupFilter(CreateDomain v) => v.groupFilter;
  static const Field<CreateDomain, String> _f$groupFilter =
      Field('groupFilter', _$groupFilter, key: 'groupd_filter', opt: true);
  static String? _$groupNameAttribute(CreateDomain v) => v.groupNameAttribute;
  static const Field<CreateDomain, String> _f$groupNameAttribute = Field(
      'groupNameAttribute', _$groupNameAttribute,
      key: 'group_name_attr', opt: true);
  static String? _$issuerUrl(CreateDomain v) => v.issuerUrl;
  static const Field<CreateDomain, String> _f$issuerUrl =
      Field('issuerUrl', _$issuerUrl, key: 'issuer-url', opt: true);
  static LdapMode _$mode(CreateDomain v) => v.mode;
  static const Field<CreateDomain, LdapMode> _f$mode =
      Field('mode', _$mode, opt: true, def: LdapMode.ldap);
  static String? _$password(CreateDomain v) => v.password;
  static const Field<CreateDomain, String> _f$password =
      Field('password', _$password, opt: true);
  static int? _$port(CreateDomain v) => v.port;
  static const Field<CreateDomain, int> _f$port =
      Field('port', _$port, opt: true);
  static Prompt? _$prompt(CreateDomain v) => v.prompt;
  static const Field<CreateDomain, Prompt> _f$prompt =
      Field('prompt', _$prompt, opt: true);
  static String _$scopes(CreateDomain v) => v.scopes;
  static const Field<CreateDomain, String> _f$scopes =
      Field('scopes', _$scopes, opt: true, def: 'email profile');
  static bool? _$isSecure(CreateDomain v) => v.isSecure;
  static const Field<CreateDomain, bool> _f$isSecure = Field(
      'isSecure', _$isSecure,
      key: 'secure', opt: true, hook: ProxmoxBoolHook());
  static String? _$primaryServer(CreateDomain v) => v.primaryServer;
  static const Field<CreateDomain, String> _f$primaryServer =
      Field('primaryServer', _$primaryServer, key: 'server1', opt: true);
  static String? _$fallbackServer(CreateDomain v) => v.fallbackServer;
  static const Field<CreateDomain, String> _f$fallbackServer =
      Field('fallbackServer', _$fallbackServer, key: 'server2', opt: true);
  static SslVersion? _$sslVersion(CreateDomain v) => v.sslVersion;
  static const Field<CreateDomain, SslVersion> _f$sslVersion =
      Field('sslVersion', _$sslVersion, key: 'sslversion', opt: true);
  static SyncOptions? _$syncDefaultsOptions(CreateDomain v) =>
      v.syncDefaultsOptions;
  static const Field<CreateDomain, SyncOptions> _f$syncDefaultsOptions = Field(
      'syncDefaultsOptions', _$syncDefaultsOptions,
      key: 'sync-defaults-options', opt: true, hook: SyncDefaultsOptions());
  static String? _$syncAttributes(CreateDomain v) => v.syncAttributes;
  static const Field<CreateDomain, String> _f$syncAttributes = Field(
      'syncAttributes', _$syncAttributes,
      key: 'sync_attributes', opt: true);
  static String? _$tfa(CreateDomain v) => v.tfa;
  static const Field<CreateDomain, String> _f$tfa =
      Field('tfa', _$tfa, opt: true);
  static String? _$userAttr(CreateDomain v) => v.userAttr;
  static const Field<CreateDomain, String> _f$userAttr =
      Field('userAttr', _$userAttr, key: 'user_attr', opt: true);
  static List<String>? _$userClasses(CreateDomain v) => v.userClasses;
  static const Field<CreateDomain, List<String>> _f$userClasses =
      Field('userClasses', _$userClasses, key: 'user_classes', opt: true);
  static String? _$usernameClaim(CreateDomain v) => v.usernameClaim;
  static const Field<CreateDomain, String> _f$usernameClaim =
      Field('usernameClaim', _$usernameClaim, key: 'username-claim', opt: true);
  static bool? _$shouldVerify(CreateDomain v) => v.shouldVerify;
  static const Field<CreateDomain, bool> _f$shouldVerify = Field(
      'shouldVerify', _$shouldVerify,
      key: 'verify', opt: true, hook: ProxmoxBoolHook());

  @override
  final MappableFields<CreateDomain> fields = const {
    #realm: _f$realm,
    #type: _f$type,
    #acrValues: _f$acrValues,
    #autocreate: _f$autocreate,
    #baseDn: _f$baseDn,
    #bindDn: _f$bindDn,
    #capath: _f$capath,
    #isCaseSensitive: _f$isCaseSensitive,
    #cert: _f$cert,
    #certKey: _f$certKey,
    #checkConnection: _f$checkConnection,
    #clientId: _f$clientId,
    #clientKey: _f$clientKey,
    #comment: _f$comment,
    #isDefault: _f$isDefault,
    #domain: _f$domain,
    #filter: _f$filter,
    #groupClasses: _f$groupClasses,
    #groupDn: _f$groupDn,
    #groupFilter: _f$groupFilter,
    #groupNameAttribute: _f$groupNameAttribute,
    #issuerUrl: _f$issuerUrl,
    #mode: _f$mode,
    #password: _f$password,
    #port: _f$port,
    #prompt: _f$prompt,
    #scopes: _f$scopes,
    #isSecure: _f$isSecure,
    #primaryServer: _f$primaryServer,
    #fallbackServer: _f$fallbackServer,
    #sslVersion: _f$sslVersion,
    #syncDefaultsOptions: _f$syncDefaultsOptions,
    #syncAttributes: _f$syncAttributes,
    #tfa: _f$tfa,
    #userAttr: _f$userAttr,
    #userClasses: _f$userClasses,
    #usernameClaim: _f$usernameClaim,
    #shouldVerify: _f$shouldVerify,
  };
  @override
  final bool ignoreNull = true;

  static CreateDomain _instantiate(DecodingData data) {
    return CreateDomain(
        realm: data.dec(_f$realm),
        type: data.dec(_f$type),
        acrValues: data.dec(_f$acrValues),
        autocreate: data.dec(_f$autocreate),
        baseDn: data.dec(_f$baseDn),
        bindDn: data.dec(_f$bindDn),
        capath: data.dec(_f$capath),
        isCaseSensitive: data.dec(_f$isCaseSensitive),
        cert: data.dec(_f$cert),
        certKey: data.dec(_f$certKey),
        checkConnection: data.dec(_f$checkConnection),
        clientId: data.dec(_f$clientId),
        clientKey: data.dec(_f$clientKey),
        comment: data.dec(_f$comment),
        isDefault: data.dec(_f$isDefault),
        domain: data.dec(_f$domain),
        filter: data.dec(_f$filter),
        groupClasses: data.dec(_f$groupClasses),
        groupDn: data.dec(_f$groupDn),
        groupFilter: data.dec(_f$groupFilter),
        groupNameAttribute: data.dec(_f$groupNameAttribute),
        issuerUrl: data.dec(_f$issuerUrl),
        mode: data.dec(_f$mode),
        password: data.dec(_f$password),
        port: data.dec(_f$port),
        prompt: data.dec(_f$prompt),
        scopes: data.dec(_f$scopes),
        isSecure: data.dec(_f$isSecure),
        primaryServer: data.dec(_f$primaryServer),
        fallbackServer: data.dec(_f$fallbackServer),
        sslVersion: data.dec(_f$sslVersion),
        syncDefaultsOptions: data.dec(_f$syncDefaultsOptions),
        syncAttributes: data.dec(_f$syncAttributes),
        tfa: data.dec(_f$tfa),
        userAttr: data.dec(_f$userAttr),
        userClasses: data.dec(_f$userClasses),
        usernameClaim: data.dec(_f$usernameClaim),
        shouldVerify: data.dec(_f$shouldVerify));
  }

  @override
  final Function instantiate = _instantiate;

  static CreateDomain fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CreateDomain>(map);
  }

  static CreateDomain fromJson(String json) {
    return ensureInitialized().decodeJson<CreateDomain>(json);
  }
}

mixin CreateDomainMappable {
  String toJson() {
    return CreateDomainMapper.ensureInitialized()
        .encodeJson<CreateDomain>(this as CreateDomain);
  }

  Map<String, dynamic> toMap() {
    return CreateDomainMapper.ensureInitialized()
        .encodeMap<CreateDomain>(this as CreateDomain);
  }

  CreateDomainCopyWith<CreateDomain, CreateDomain, CreateDomain> get copyWith =>
      _CreateDomainCopyWithImpl(this as CreateDomain, $identity, $identity);
  @override
  String toString() {
    return CreateDomainMapper.ensureInitialized()
        .stringifyValue(this as CreateDomain);
  }

  @override
  bool operator ==(Object other) {
    return CreateDomainMapper.ensureInitialized()
        .equalsValue(this as CreateDomain, other);
  }

  @override
  int get hashCode {
    return CreateDomainMapper.ensureInitialized()
        .hashValue(this as CreateDomain);
  }
}

extension CreateDomainValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CreateDomain, $Out> {
  CreateDomainCopyWith<$R, CreateDomain, $Out> get $asCreateDomain =>
      $base.as((v, t, t2) => _CreateDomainCopyWithImpl(v, t, t2));
}

abstract class CreateDomainCopyWith<$R, $In extends CreateDomain, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get groupClasses;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get userClasses;
  $R call(
      {String? realm,
      DomainType? type,
      String? acrValues,
      bool? autocreate,
      String? baseDn,
      String? bindDn,
      String? capath,
      bool? isCaseSensitive,
      String? cert,
      String? certKey,
      bool? checkConnection,
      String? clientId,
      String? clientKey,
      String? comment,
      bool? isDefault,
      String? domain,
      String? filter,
      List<String>? groupClasses,
      String? groupDn,
      String? groupFilter,
      String? groupNameAttribute,
      String? issuerUrl,
      LdapMode? mode,
      String? password,
      int? port,
      Prompt? prompt,
      String? scopes,
      bool? isSecure,
      String? primaryServer,
      String? fallbackServer,
      SslVersion? sslVersion,
      SyncOptions? syncDefaultsOptions,
      String? syncAttributes,
      String? tfa,
      String? userAttr,
      List<String>? userClasses,
      String? usernameClaim,
      bool? shouldVerify});
  CreateDomainCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CreateDomainCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CreateDomain, $Out>
    implements CreateDomainCopyWith<$R, CreateDomain, $Out> {
  _CreateDomainCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CreateDomain> $mapper =
      CreateDomainMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get groupClasses => $value.groupClasses != null
          ? ListCopyWith(
              $value.groupClasses!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(groupClasses: v))
          : null;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get userClasses => $value.userClasses != null
          ? ListCopyWith(
              $value.userClasses!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(userClasses: v))
          : null;
  @override
  $R call(
          {String? realm,
          DomainType? type,
          Object? acrValues = $none,
          Object? autocreate = $none,
          Object? baseDn = $none,
          Object? bindDn = $none,
          Object? capath = $none,
          Object? isCaseSensitive = $none,
          Object? cert = $none,
          Object? certKey = $none,
          Object? checkConnection = $none,
          Object? clientId = $none,
          Object? clientKey = $none,
          Object? comment = $none,
          Object? isDefault = $none,
          Object? domain = $none,
          Object? filter = $none,
          Object? groupClasses = $none,
          Object? groupDn = $none,
          Object? groupFilter = $none,
          Object? groupNameAttribute = $none,
          Object? issuerUrl = $none,
          LdapMode? mode,
          Object? password = $none,
          Object? port = $none,
          Object? prompt = $none,
          String? scopes,
          Object? isSecure = $none,
          Object? primaryServer = $none,
          Object? fallbackServer = $none,
          Object? sslVersion = $none,
          Object? syncDefaultsOptions = $none,
          Object? syncAttributes = $none,
          Object? tfa = $none,
          Object? userAttr = $none,
          Object? userClasses = $none,
          Object? usernameClaim = $none,
          Object? shouldVerify = $none}) =>
      $apply(FieldCopyWithData({
        if (realm != null) #realm: realm,
        if (type != null) #type: type,
        if (acrValues != $none) #acrValues: acrValues,
        if (autocreate != $none) #autocreate: autocreate,
        if (baseDn != $none) #baseDn: baseDn,
        if (bindDn != $none) #bindDn: bindDn,
        if (capath != $none) #capath: capath,
        if (isCaseSensitive != $none) #isCaseSensitive: isCaseSensitive,
        if (cert != $none) #cert: cert,
        if (certKey != $none) #certKey: certKey,
        if (checkConnection != $none) #checkConnection: checkConnection,
        if (clientId != $none) #clientId: clientId,
        if (clientKey != $none) #clientKey: clientKey,
        if (comment != $none) #comment: comment,
        if (isDefault != $none) #isDefault: isDefault,
        if (domain != $none) #domain: domain,
        if (filter != $none) #filter: filter,
        if (groupClasses != $none) #groupClasses: groupClasses,
        if (groupDn != $none) #groupDn: groupDn,
        if (groupFilter != $none) #groupFilter: groupFilter,
        if (groupNameAttribute != $none)
          #groupNameAttribute: groupNameAttribute,
        if (issuerUrl != $none) #issuerUrl: issuerUrl,
        if (mode != null) #mode: mode,
        if (password != $none) #password: password,
        if (port != $none) #port: port,
        if (prompt != $none) #prompt: prompt,
        if (scopes != null) #scopes: scopes,
        if (isSecure != $none) #isSecure: isSecure,
        if (primaryServer != $none) #primaryServer: primaryServer,
        if (fallbackServer != $none) #fallbackServer: fallbackServer,
        if (sslVersion != $none) #sslVersion: sslVersion,
        if (syncDefaultsOptions != $none)
          #syncDefaultsOptions: syncDefaultsOptions,
        if (syncAttributes != $none) #syncAttributes: syncAttributes,
        if (tfa != $none) #tfa: tfa,
        if (userAttr != $none) #userAttr: userAttr,
        if (userClasses != $none) #userClasses: userClasses,
        if (usernameClaim != $none) #usernameClaim: usernameClaim,
        if (shouldVerify != $none) #shouldVerify: shouldVerify
      }));
  @override
  CreateDomain $make(CopyWithData data) => CreateDomain(
      realm: data.get(#realm, or: $value.realm),
      type: data.get(#type, or: $value.type),
      acrValues: data.get(#acrValues, or: $value.acrValues),
      autocreate: data.get(#autocreate, or: $value.autocreate),
      baseDn: data.get(#baseDn, or: $value.baseDn),
      bindDn: data.get(#bindDn, or: $value.bindDn),
      capath: data.get(#capath, or: $value.capath),
      isCaseSensitive: data.get(#isCaseSensitive, or: $value.isCaseSensitive),
      cert: data.get(#cert, or: $value.cert),
      certKey: data.get(#certKey, or: $value.certKey),
      checkConnection: data.get(#checkConnection, or: $value.checkConnection),
      clientId: data.get(#clientId, or: $value.clientId),
      clientKey: data.get(#clientKey, or: $value.clientKey),
      comment: data.get(#comment, or: $value.comment),
      isDefault: data.get(#isDefault, or: $value.isDefault),
      domain: data.get(#domain, or: $value.domain),
      filter: data.get(#filter, or: $value.filter),
      groupClasses: data.get(#groupClasses, or: $value.groupClasses),
      groupDn: data.get(#groupDn, or: $value.groupDn),
      groupFilter: data.get(#groupFilter, or: $value.groupFilter),
      groupNameAttribute:
          data.get(#groupNameAttribute, or: $value.groupNameAttribute),
      issuerUrl: data.get(#issuerUrl, or: $value.issuerUrl),
      mode: data.get(#mode, or: $value.mode),
      password: data.get(#password, or: $value.password),
      port: data.get(#port, or: $value.port),
      prompt: data.get(#prompt, or: $value.prompt),
      scopes: data.get(#scopes, or: $value.scopes),
      isSecure: data.get(#isSecure, or: $value.isSecure),
      primaryServer: data.get(#primaryServer, or: $value.primaryServer),
      fallbackServer: data.get(#fallbackServer, or: $value.fallbackServer),
      sslVersion: data.get(#sslVersion, or: $value.sslVersion),
      syncDefaultsOptions:
          data.get(#syncDefaultsOptions, or: $value.syncDefaultsOptions),
      syncAttributes: data.get(#syncAttributes, or: $value.syncAttributes),
      tfa: data.get(#tfa, or: $value.tfa),
      userAttr: data.get(#userAttr, or: $value.userAttr),
      userClasses: data.get(#userClasses, or: $value.userClasses),
      usernameClaim: data.get(#usernameClaim, or: $value.usernameClaim),
      shouldVerify: data.get(#shouldVerify, or: $value.shouldVerify));

  @override
  CreateDomainCopyWith<$R2, CreateDomain, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CreateDomainCopyWithImpl($value, $cast, t);
}
