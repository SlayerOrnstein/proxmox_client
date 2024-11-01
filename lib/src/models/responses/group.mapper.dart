// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'group.dart';

class GroupMapper extends ClassMapperBase<Group> {
  GroupMapper._();

  static GroupMapper? _instance;
  static GroupMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GroupMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Group';

  static String _$groupId(Group v) => v.groupId;
  static const Field<Group, String> _f$groupId =
      Field('groupId', _$groupId, key: 'groupid');
  static String _$users(Group v) => v.users;
  static const Field<Group, String> _f$users = Field('users', _$users);
  static String? _$comment(Group v) => v.comment;
  static const Field<Group, String> _f$comment =
      Field('comment', _$comment, opt: true);

  @override
  final MappableFields<Group> fields = const {
    #groupId: _f$groupId,
    #users: _f$users,
    #comment: _f$comment,
  };

  static Group _instantiate(DecodingData data) {
    return Group(
        groupId: data.dec(_f$groupId),
        users: data.dec(_f$users),
        comment: data.dec(_f$comment));
  }

  @override
  final Function instantiate = _instantiate;

  static Group fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Group>(map);
  }

  static Group fromJson(String json) {
    return ensureInitialized().decodeJson<Group>(json);
  }
}

mixin GroupMappable {
  String toJson() {
    return GroupMapper.ensureInitialized().encodeJson<Group>(this as Group);
  }

  Map<String, dynamic> toMap() {
    return GroupMapper.ensureInitialized().encodeMap<Group>(this as Group);
  }

  GroupCopyWith<Group, Group, Group> get copyWith =>
      _GroupCopyWithImpl(this as Group, $identity, $identity);
  @override
  String toString() {
    return GroupMapper.ensureInitialized().stringifyValue(this as Group);
  }

  @override
  bool operator ==(Object other) {
    return GroupMapper.ensureInitialized().equalsValue(this as Group, other);
  }

  @override
  int get hashCode {
    return GroupMapper.ensureInitialized().hashValue(this as Group);
  }
}

extension GroupValueCopy<$R, $Out> on ObjectCopyWith<$R, Group, $Out> {
  GroupCopyWith<$R, Group, $Out> get $asGroup =>
      $base.as((v, t, t2) => _GroupCopyWithImpl(v, t, t2));
}

abstract class GroupCopyWith<$R, $In extends Group, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? groupId, String? users, String? comment});
  GroupCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _GroupCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Group, $Out>
    implements GroupCopyWith<$R, Group, $Out> {
  _GroupCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Group> $mapper = GroupMapper.ensureInitialized();
  @override
  $R call({String? groupId, String? users, Object? comment = $none}) =>
      $apply(FieldCopyWithData({
        if (groupId != null) #groupId: groupId,
        if (users != null) #users: users,
        if (comment != $none) #comment: comment
      }));
  @override
  Group $make(CopyWithData data) => Group(
      groupId: data.get(#groupId, or: $value.groupId),
      users: data.get(#users, or: $value.users),
      comment: data.get(#comment, or: $value.comment));

  @override
  GroupCopyWith<$R2, Group, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _GroupCopyWithImpl($value, $cast, t);
}
