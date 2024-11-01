import 'package:dart_mappable/dart_mappable.dart';
import 'package:proxmox_client/src/utils/json_utils.dart';

part 'group.mapper.dart';

/// {@template group}
/// Proxmox group
/// {@endtemplate}
@MappableClass()
class Group with GroupMappable {
  /// {@macro group}
  Group({required this.groupId, required this.users, this.comment});

  /// [Group] instance from Map
  factory Group.fromMap(JsonObject map) {
    return GroupMapper.fromMap(map);
  }

  /// Group ID
  @MappableField(key: 'groupid')
  final String groupId;

  /// list of users which form this group
  final String users;

  /// A comment
  final String? comment;
}
