import 'package:dart_mappable/dart_mappable.dart';
import 'package:proxmox_client/src/models/requests/domain_config.dart';

/// {@template domain_type_hook}
/// Domain hook
/// {@endtemplate}
class DomainTypeHook extends MappingHook {
  /// {@macro domain_type_hook}
  const DomainTypeHook();

  @override
  Object? beforeEncode(Object? value) {
    if (value == null) return null;

    return (value as RealmType).name;
  }
}
