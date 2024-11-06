// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'group.dart';

class GroupItemMapper extends ClassMapperBase<GroupItem> {
  GroupItemMapper._();

  static GroupItemMapper? _instance;
  static GroupItemMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GroupItemMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'GroupItem';

  static String _$groupId(GroupItem v) => v.groupId;
  static const Field<GroupItem, String> _f$groupId =
      Field('groupId', _$groupId, key: 'groupid');
  static String? _$users(GroupItem v) => v.users;
  static const Field<GroupItem, String> _f$users = Field('users', _$users);
  static String? _$comment(GroupItem v) => v.comment;
  static const Field<GroupItem, String> _f$comment =
      Field('comment', _$comment, opt: true);

  @override
  final MappableFields<GroupItem> fields = const {
    #groupId: _f$groupId,
    #users: _f$users,
    #comment: _f$comment,
  };

  static GroupItem _instantiate(DecodingData data) {
    return GroupItem(
        groupId: data.dec(_f$groupId),
        users: data.dec(_f$users),
        comment: data.dec(_f$comment));
  }

  @override
  final Function instantiate = _instantiate;

  static GroupItem fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GroupItem>(map);
  }

  static GroupItem fromJson(String json) {
    return ensureInitialized().decodeJson<GroupItem>(json);
  }
}

mixin GroupItemMappable {
  String toJson() {
    return GroupItemMapper.ensureInitialized()
        .encodeJson<GroupItem>(this as GroupItem);
  }

  Map<String, dynamic> toMap() {
    return GroupItemMapper.ensureInitialized()
        .encodeMap<GroupItem>(this as GroupItem);
  }

  GroupItemCopyWith<GroupItem, GroupItem, GroupItem> get copyWith =>
      _GroupItemCopyWithImpl(this as GroupItem, $identity, $identity);
  @override
  String toString() {
    return GroupItemMapper.ensureInitialized()
        .stringifyValue(this as GroupItem);
  }

  @override
  bool operator ==(Object other) {
    return GroupItemMapper.ensureInitialized()
        .equalsValue(this as GroupItem, other);
  }

  @override
  int get hashCode {
    return GroupItemMapper.ensureInitialized().hashValue(this as GroupItem);
  }
}

extension GroupItemValueCopy<$R, $Out> on ObjectCopyWith<$R, GroupItem, $Out> {
  GroupItemCopyWith<$R, GroupItem, $Out> get $asGroupItem =>
      $base.as((v, t, t2) => _GroupItemCopyWithImpl(v, t, t2));
}

abstract class GroupItemCopyWith<$R, $In extends GroupItem, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? groupId, String? users, String? comment});
  GroupItemCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _GroupItemCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GroupItem, $Out>
    implements GroupItemCopyWith<$R, GroupItem, $Out> {
  _GroupItemCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GroupItem> $mapper =
      GroupItemMapper.ensureInitialized();
  @override
  $R call({String? groupId, Object? users = $none, Object? comment = $none}) =>
      $apply(FieldCopyWithData({
        if (groupId != null) #groupId: groupId,
        if (users != $none) #users: users,
        if (comment != $none) #comment: comment
      }));
  @override
  GroupItem $make(CopyWithData data) => GroupItem(
      groupId: data.get(#groupId, or: $value.groupId),
      users: data.get(#users, or: $value.users),
      comment: data.get(#comment, or: $value.comment));

  @override
  GroupItemCopyWith<$R2, GroupItem, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _GroupItemCopyWithImpl($value, $cast, t);
}

class GroupExpandedMapper extends ClassMapperBase<GroupExpanded> {
  GroupExpandedMapper._();

  static GroupExpandedMapper? _instance;
  static GroupExpandedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GroupExpandedMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'GroupExpanded';

  static List<String> _$members(GroupExpanded v) => v.members;
  static const Field<GroupExpanded, List<String>> _f$members =
      Field('members', _$members);
  static String? _$comment(GroupExpanded v) => v.comment;
  static const Field<GroupExpanded, String> _f$comment =
      Field('comment', _$comment, opt: true);

  @override
  final MappableFields<GroupExpanded> fields = const {
    #members: _f$members,
    #comment: _f$comment,
  };

  static GroupExpanded _instantiate(DecodingData data) {
    return GroupExpanded(
        members: data.dec(_f$members), comment: data.dec(_f$comment));
  }

  @override
  final Function instantiate = _instantiate;

  static GroupExpanded fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GroupExpanded>(map);
  }

  static GroupExpanded fromJson(String json) {
    return ensureInitialized().decodeJson<GroupExpanded>(json);
  }
}

mixin GroupExpandedMappable {
  String toJson() {
    return GroupExpandedMapper.ensureInitialized()
        .encodeJson<GroupExpanded>(this as GroupExpanded);
  }

  Map<String, dynamic> toMap() {
    return GroupExpandedMapper.ensureInitialized()
        .encodeMap<GroupExpanded>(this as GroupExpanded);
  }

  GroupExpandedCopyWith<GroupExpanded, GroupExpanded, GroupExpanded>
      get copyWith => _GroupExpandedCopyWithImpl(
          this as GroupExpanded, $identity, $identity);
  @override
  String toString() {
    return GroupExpandedMapper.ensureInitialized()
        .stringifyValue(this as GroupExpanded);
  }

  @override
  bool operator ==(Object other) {
    return GroupExpandedMapper.ensureInitialized()
        .equalsValue(this as GroupExpanded, other);
  }

  @override
  int get hashCode {
    return GroupExpandedMapper.ensureInitialized()
        .hashValue(this as GroupExpanded);
  }
}

extension GroupExpandedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GroupExpanded, $Out> {
  GroupExpandedCopyWith<$R, GroupExpanded, $Out> get $asGroupExpanded =>
      $base.as((v, t, t2) => _GroupExpandedCopyWithImpl(v, t, t2));
}

abstract class GroupExpandedCopyWith<$R, $In extends GroupExpanded, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get members;
  $R call({List<String>? members, String? comment});
  GroupExpandedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _GroupExpandedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GroupExpanded, $Out>
    implements GroupExpandedCopyWith<$R, GroupExpanded, $Out> {
  _GroupExpandedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GroupExpanded> $mapper =
      GroupExpandedMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get members =>
      ListCopyWith($value.members, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(members: v));
  @override
  $R call({List<String>? members, Object? comment = $none}) =>
      $apply(FieldCopyWithData({
        if (members != null) #members: members,
        if (comment != $none) #comment: comment
      }));
  @override
  GroupExpanded $make(CopyWithData data) => GroupExpanded(
      members: data.get(#members, or: $value.members),
      comment: data.get(#comment, or: $value.comment));

  @override
  GroupExpandedCopyWith<$R2, GroupExpanded, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _GroupExpandedCopyWithImpl($value, $cast, t);
}
