import 'package:dart_mappable/dart_mappable.dart';
import 'package:proxmox_client/src/utils/utils.dart';

/// {@template domain_hook}
/// Prevent encoding if domain contains spaces
/// {@endtemplate}
class DomainHook extends MappingHook {
  /// {@macro domain_hook}
  const DomainHook();

  @override
  Object? beforeEncode(Object? value) {
    if (value == null) return null;

    if (!(ProxmoxRegex.domain.allMatches(value as String).length == 1)) {
      throw const FormatException('domain name cannot contain spaces');
    }

    return value;
  }
}
