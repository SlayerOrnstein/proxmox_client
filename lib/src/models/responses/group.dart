import 'package:dart_mappable/dart_mappable.dart';
import 'package:proxmox_client/src/utils/json_utils.dart';

part 'group.mapper.dart';

/// {@template group}
/// Proxmox group
/// {@endtemplate}
abstract class Group {
  /// {@macro group}
  const Group({this.comment});

  /// A comment
  final String? comment;
}

/// {@template group_item}
/// Proxmox group array item
/// {@endtemplate}
@MappableClass()
class GroupItem extends Group with GroupItemMappable {
  /// {@macro group_item}
  const GroupItem({
    required this.groupId,
    required this.users,
    super.comment,
  });

  /// [Group] instance from Map
  factory GroupItem.fromMap(JsonObject map) => GroupItemMapper.fromMap(map);

  /// Group ID
  @MappableField(key: 'groupid')
  final String groupId;

  /// list of users which form this group
  final String? users;
}

/// {@template group_expanded}
/// Proxmox group expanded
/// {@endtemplate}
@MappableClass()
class GroupExpanded extends Group {
  /// {@macro group_expanded}
  const GroupExpanded({required this.members, super.comment});

  /// [Group] instance from Map
  factory GroupExpanded.fromMap(JsonObject map) {
    return GroupExpandedMapper.fromMap(map);
  }

  /// Full User ID, in the `name@realm` format.
  final List<String> members;
}
