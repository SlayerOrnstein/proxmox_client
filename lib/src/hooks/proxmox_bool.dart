import 'package:dart_mappable/dart_mappable.dart';

/// {@template proxmox_bool}
/// Mappinghook to turn proxmox int bools into true/false and vice versa
/// {@endtemplate}
class ProxmoxBoolHook extends MappingHook {
  /// {@macro proxmox_bool}
  const ProxmoxBoolHook();

  @override
  Object? beforeDecode(Object? value) {
    if (value == null) return null;

    return value as int == 1;
  }

  @override
  Object? beforeEncode(Object? value) {
    if (value == null) return null;

    return value as bool ? 1 : 0;
  }
}
