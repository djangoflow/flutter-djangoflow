import 'package:djangoflow_openapi/djangoflow_openapi.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'social_login_type.freezed.dart';
part 'social_login_type.g.dart';

@freezed
abstract class SocialLoginType with _$SocialLoginType {
  const factory SocialLoginType({
    required ProviderEnum provider,
    required String id,
  }) = _SocialLoginType;

  factory SocialLoginType.fromJson(Map<String, dynamic> json) =>
      _$SocialLoginTypeFromJson(json);

  /// Automatically assigns a new id to the [SocialLoginType].
  factory SocialLoginType.fromProvider(ProviderEnum provider) =>
      SocialLoginType(
        provider: provider,
        id: const Uuid().v1(),
      );
}
