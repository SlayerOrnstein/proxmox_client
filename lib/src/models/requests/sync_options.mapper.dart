// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'sync_options.dart';

class SyncOptionsMapper extends ClassMapperBase<SyncOptions> {
  SyncOptionsMapper._();

  static SyncOptionsMapper? _instance;
  static SyncOptionsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SyncOptionsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SyncOptions';

  static SyncOptionsScope? _$scope(SyncOptions v) => v.scope;
  static const Field<SyncOptions, SyncOptionsScope> _f$scope =
      Field('scope', _$scope, opt: true);
  static List<SyncOptionsRemoveVanished>? _$removeVanished(SyncOptions v) =>
      v.removeVanished;
  static const Field<SyncOptions, List<SyncOptionsRemoveVanished>>
      _f$removeVanished = Field('removeVanished', _$removeVanished,
          key: 'remove-vanished', opt: true);
  static bool? _$purge(SyncOptions v) => v.purge;
  static const Field<SyncOptions, bool> _f$purge =
      Field('purge', _$purge, opt: true, hook: ProxmoxBoolHook());
  static bool? _$full(SyncOptions v) => v.full;
  static const Field<SyncOptions, bool> _f$full =
      Field('full', _$full, opt: true, hook: ProxmoxBoolHook());
  static bool? _$enableNew(SyncOptions v) => v.enableNew;
  static const Field<SyncOptions, bool> _f$enableNew = Field(
      'enableNew', _$enableNew,
      key: 'enable-new', opt: true, def: true, hook: ProxmoxBoolHook());
  static bool _$dryRun(SyncOptions v) => v.dryRun;
  static const Field<SyncOptions, bool> _f$dryRun =
      Field('dryRun', _$dryRun, opt: true, def: false, hook: ProxmoxBoolHook());

  @override
  final MappableFields<SyncOptions> fields = const {
    #scope: _f$scope,
    #removeVanished: _f$removeVanished,
    #purge: _f$purge,
    #full: _f$full,
    #enableNew: _f$enableNew,
    #dryRun: _f$dryRun,
  };

  static SyncOptions _instantiate(DecodingData data) {
    return SyncOptions(
        scope: data.dec(_f$scope),
        removeVanished: data.dec(_f$removeVanished),
        purge: data.dec(_f$purge),
        full: data.dec(_f$full),
        enableNew: data.dec(_f$enableNew),
        dryRun: data.dec(_f$dryRun));
  }

  @override
  final Function instantiate = _instantiate;

  static SyncOptions fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SyncOptions>(map);
  }

  static SyncOptions fromJson(String json) {
    return ensureInitialized().decodeJson<SyncOptions>(json);
  }
}

mixin SyncOptionsMappable {
  String toJson() {
    return SyncOptionsMapper.ensureInitialized()
        .encodeJson<SyncOptions>(this as SyncOptions);
  }

  Map<String, dynamic> toMap() {
    return SyncOptionsMapper.ensureInitialized()
        .encodeMap<SyncOptions>(this as SyncOptions);
  }

  SyncOptionsCopyWith<SyncOptions, SyncOptions, SyncOptions> get copyWith =>
      _SyncOptionsCopyWithImpl(this as SyncOptions, $identity, $identity);
  @override
  String toString() {
    return SyncOptionsMapper.ensureInitialized()
        .stringifyValue(this as SyncOptions);
  }

  @override
  bool operator ==(Object other) {
    return SyncOptionsMapper.ensureInitialized()
        .equalsValue(this as SyncOptions, other);
  }

  @override
  int get hashCode {
    return SyncOptionsMapper.ensureInitialized().hashValue(this as SyncOptions);
  }
}

extension SyncOptionsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SyncOptions, $Out> {
  SyncOptionsCopyWith<$R, SyncOptions, $Out> get $asSyncOptions =>
      $base.as((v, t, t2) => _SyncOptionsCopyWithImpl(v, t, t2));
}

abstract class SyncOptionsCopyWith<$R, $In extends SyncOptions, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
      $R,
      SyncOptionsRemoveVanished,
      ObjectCopyWith<$R, SyncOptionsRemoveVanished,
          SyncOptionsRemoveVanished>>? get removeVanished;
  $R call(
      {SyncOptionsScope? scope,
      List<SyncOptionsRemoveVanished>? removeVanished,
      bool? purge,
      bool? full,
      bool? enableNew,
      bool? dryRun});
  SyncOptionsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SyncOptionsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SyncOptions, $Out>
    implements SyncOptionsCopyWith<$R, SyncOptions, $Out> {
  _SyncOptionsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SyncOptions> $mapper =
      SyncOptionsMapper.ensureInitialized();
  @override
  ListCopyWith<
      $R,
      SyncOptionsRemoveVanished,
      ObjectCopyWith<$R, SyncOptionsRemoveVanished,
          SyncOptionsRemoveVanished>>? get removeVanished =>
      $value.removeVanished != null
          ? ListCopyWith(
              $value.removeVanished!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(removeVanished: v))
          : null;
  @override
  $R call(
          {Object? scope = $none,
          Object? removeVanished = $none,
          Object? purge = $none,
          Object? full = $none,
          Object? enableNew = $none,
          bool? dryRun}) =>
      $apply(FieldCopyWithData({
        if (scope != $none) #scope: scope,
        if (removeVanished != $none) #removeVanished: removeVanished,
        if (purge != $none) #purge: purge,
        if (full != $none) #full: full,
        if (enableNew != $none) #enableNew: enableNew,
        if (dryRun != null) #dryRun: dryRun
      }));
  @override
  SyncOptions $make(CopyWithData data) => SyncOptions(
      scope: data.get(#scope, or: $value.scope),
      removeVanished: data.get(#removeVanished, or: $value.removeVanished),
      purge: data.get(#purge, or: $value.purge),
      full: data.get(#full, or: $value.full),
      enableNew: data.get(#enableNew, or: $value.enableNew),
      dryRun: data.get(#dryRun, or: $value.dryRun));

  @override
  SyncOptionsCopyWith<$R2, SyncOptions, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SyncOptionsCopyWithImpl($value, $cast, t);
}
