// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loggable.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoggableSignin _$$LoggableSigninFromJson(Map<String, dynamic> json) =>
    _$LoggableSignin(
      emailUsuario: json['emailUsuario'] as String,
      senhaUsuario: json['senhaUsuario'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$LoggableSigninToJson(_$LoggableSignin instance) =>
    <String, dynamic>{
      'emailUsuario': instance.emailUsuario,
      'senhaUsuario': instance.senhaUsuario,
      'type': instance.$type,
    };

_$LoggableSignup _$$LoggableSignupFromJson(Map<String, dynamic> json) =>
    _$LoggableSignup(
      nomeCompleto: json['nomeCompleto'] as String,
      emailUsuario: json['emailUsuario'] as String,
      senhaUsuario: json['senhaUsuario'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$LoggableSignupToJson(_$LoggableSignup instance) =>
    <String, dynamic>{
      'nomeCompleto': instance.nomeCompleto,
      'emailUsuario': instance.emailUsuario,
      'senhaUsuario': instance.senhaUsuario,
      'type': instance.$type,
    };

_$LoggableAuthenticated _$$LoggableAuthenticatedFromJson(
        Map<String, dynamic> json) =>
    _$LoggableAuthenticated(
      nomeCompleto: json['nomeCompleto'] as String,
      emailUsuario: json['emailUsuario'] as String,
      token: json['token'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$LoggableAuthenticatedToJson(
        _$LoggableAuthenticated instance) =>
    <String, dynamic>{
      'nomeCompleto': instance.nomeCompleto,
      'emailUsuario': instance.emailUsuario,
      'token': instance.token,
      'type': instance.$type,
    };
