import 'package:dart_mappable/dart_mappable.dart';
import 'package:proxmox_client/src/utils/json_utils.dart';

part 'group.mapper.dart';

@MappableClass()
class Group with GroupMappable {
  Group({required this.groupId, required this.users, this.comment});

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
