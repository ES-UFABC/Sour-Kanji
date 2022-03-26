import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.unkown() = _Unkown;
  const factory AuthFailure.invalid() = _Invalid;
  const factory AuthFailure.network() = _Network;
  const factory AuthFailure.accountAlreadyExists() = _AccountAlreadyExists;
}
