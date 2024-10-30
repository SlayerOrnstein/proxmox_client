import 'package:dart_mappable/dart_mappable.dart';
import 'package:proxmox_client/src/utils/utils.dart';

/// {@template acr_values}
/// Prevents encoding acr-values with special characters
/// {@endtemplate}
class AcrValuesHook extends MappingHook {
  /// {@macro acr_values}
  const AcrValuesHook();

  @override
  Object? beforeEncode(Object? value) {
    if (value == null) return null;

    if (!ProxmoxRegex.acrValues.hasMatch(value as String)) {
      throw const FormatException('Invalid acr-values');
    }

    return value;
  }
}
