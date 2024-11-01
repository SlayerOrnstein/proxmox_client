import 'package:dart_mappable/dart_mappable.dart';

part 'domain.mapper.dart';

/// Two-factor authentication provider
enum Tfa {
  /// Yubico OTP
  yubico,

  /// Time-based One-Time Password
  oath
}

/// {@template domain}
/// Represents a Proxmox domain
/// {@endtemplate}
@MappableClass()
class Domain with DomainMappable {
  /// {@macro domain}
  Domain({
    required this.realm,
    required this.type,
    this.comment,
    this.tfa,
  });

  /// Create a [Domain] from JSON
  factory Domain.fromJson(String json) {
    return DomainMapper.fromJson(json);
  }

  /// Create a [Domain] from a [Map]
  factory Domain.fromMap(Map<String, dynamic> map) {
    return DomainMapper.fromMap(map);
  }

  /// The realm this domain belongs too
  final String realm;

  /// Realm type
  final String type;

  /// A comment
  final String? comment;

  /// Two-factor authentication provider
  final Tfa? tfa;
}
