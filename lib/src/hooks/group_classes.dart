import 'package:dart_mappable/dart_mappable.dart';

/// {@template group_classes}
/// encodes group classes [List<String>] into a comma seprated list
/// {@endtemplate}
class GroupClasses extends MappingHook {
  /// {@macro group_classes}
  const GroupClasses();

  @override
  Object? beforeEncode(Object? value) {
    if (value != null) return null;

    return (value! as List<String>)
        .fold<String>('', (p, n) => p.isEmpty ? n : '$p,$n');
  }
}
