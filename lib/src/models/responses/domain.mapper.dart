// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'domain.dart';

class DomainMapper extends ClassMapperBase<Domain> {
  DomainMapper._();

  static DomainMapper? _instance;
  static DomainMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DomainMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Domain';

  static String _$realm(Domain v) => v.realm;
  static const Field<Domain, String> _f$realm = Field('realm', _$realm);
  static String _$type(Domain v) => v.type;
  static const Field<Domain, String> _f$type = Field('type', _$type);
  static String? _$comment(Domain v) => v.comment;
  static const Field<Domain, String> _f$comment =
      Field('comment', _$comment, opt: true);
  static Tfa? _$tfa(Domain v) => v.tfa;
  static const Field<Domain, Tfa> _f$tfa = Field('tfa', _$tfa, opt: true);
  static bool _$isDefault(Domain v) => v.isDefault;
  static const Field<Domain, bool> _f$isDefault = Field(
      'isDefault', _$isDefault,
      key: 'default', opt: true, def: false, hook: ProxmoxBoolHook());

  @override
  final MappableFields<Domain> fields = const {
    #realm: _f$realm,
    #type: _f$type,
    #comment: _f$comment,
    #tfa: _f$tfa,
    #isDefault: _f$isDefault,
  };

  static Domain _instantiate(DecodingData data) {
    return Domain(
        realm: data.dec(_f$realm),
        type: data.dec(_f$type),
        comment: data.dec(_f$comment),
        tfa: data.dec(_f$tfa),
        isDefault: data.dec(_f$isDefault));
  }

  @override
  final Function instantiate = _instantiate;

  static Domain fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Domain>(map);
  }

  static Domain fromJson(String json) {
    return ensureInitialized().decodeJson<Domain>(json);
  }
}

mixin DomainMappable {
  String toJson() {
    return DomainMapper.ensureInitialized().encodeJson<Domain>(this as Domain);
  }

  Map<String, dynamic> toMap() {
    return DomainMapper.ensureInitialized().encodeMap<Domain>(this as Domain);
  }

  DomainCopyWith<Domain, Domain, Domain> get copyWith =>
      _DomainCopyWithImpl(this as Domain, $identity, $identity);
  @override
  String toString() {
    return DomainMapper.ensureInitialized().stringifyValue(this as Domain);
  }

  @override
  bool operator ==(Object other) {
    return DomainMapper.ensureInitialized().equalsValue(this as Domain, other);
  }

  @override
  int get hashCode {
    return DomainMapper.ensureInitialized().hashValue(this as Domain);
  }
}

extension DomainValueCopy<$R, $Out> on ObjectCopyWith<$R, Domain, $Out> {
  DomainCopyWith<$R, Domain, $Out> get $asDomain =>
      $base.as((v, t, t2) => _DomainCopyWithImpl(v, t, t2));
}

abstract class DomainCopyWith<$R, $In extends Domain, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? realm,
      String? type,
      String? comment,
      Tfa? tfa,
      bool? isDefault});
  DomainCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DomainCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Domain, $Out>
    implements DomainCopyWith<$R, Domain, $Out> {
  _DomainCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Domain> $mapper = DomainMapper.ensureInitialized();
  @override
  $R call(
          {String? realm,
          String? type,
          Object? comment = $none,
          Object? tfa = $none,
          bool? isDefault}) =>
      $apply(FieldCopyWithData({
        if (realm != null) #realm: realm,
        if (type != null) #type: type,
        if (comment != $none) #comment: comment,
        if (tfa != $none) #tfa: tfa,
        if (isDefault != null) #isDefault: isDefault
      }));
  @override
  Domain $make(CopyWithData data) => Domain(
      realm: data.get(#realm, or: $value.realm),
      type: data.get(#type, or: $value.type),
      comment: data.get(#comment, or: $value.comment),
      tfa: data.get(#tfa, or: $value.tfa),
      isDefault: data.get(#isDefault, or: $value.isDefault));

  @override
  DomainCopyWith<$R2, Domain, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _DomainCopyWithImpl($value, $cast, t);
}
