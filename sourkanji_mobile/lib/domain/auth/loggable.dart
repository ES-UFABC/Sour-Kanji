import 'package:freezed_annotation/freezed_annotation.dart';

part 'loggable.g.dart';
part 'loggable.freezed.dart';

@freezed
class Loggable with _$Loggable {
  const factory Loggable.signin({
    required String emailUsuario,
    required String senhaUsuario,
  }) = LoggableSignin;
  const factory Loggable.signup({
    required String nomeCompleto,
    required String emailUsuario,
    required String senhaUsuario,
  }) = LoggableSignup;
  const factory Loggable.authenticated({
    required String nomeCompleto,
    required String emailUsuario,
    required String token,
  }) = LoggableAuthenticated;
  factory Loggable.fromJson(Map<String, dynamic> json) =>
      _$LoggableFromJson(json);
}
