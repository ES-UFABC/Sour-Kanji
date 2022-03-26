// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'loggable.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Loggable _$LoggableFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'signin':
      return LoggableSignin.fromJson(json);
    case 'signup':
      return LoggableSignup.fromJson(json);
    case 'authenticated':
      return LoggableAuthenticated.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'Loggable', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
class _$LoggableTearOff {
  const _$LoggableTearOff();

  LoggableSignin signin(
      {required String emailUsuario, required String senhaUsuario}) {
    return LoggableSignin(
      emailUsuario: emailUsuario,
      senhaUsuario: senhaUsuario,
    );
  }

  LoggableSignup signup(
      {required String nomeCompleto,
      required String emailUsuario,
      required String senhaUsuario}) {
    return LoggableSignup(
      nomeCompleto: nomeCompleto,
      emailUsuario: emailUsuario,
      senhaUsuario: senhaUsuario,
    );
  }

  LoggableAuthenticated authenticated(
      {required String nomeCompleto,
      required String emailUsuario,
      required String token}) {
    return LoggableAuthenticated(
      nomeCompleto: nomeCompleto,
      emailUsuario: emailUsuario,
      token: token,
    );
  }

  Loggable fromJson(Map<String, Object?> json) {
    return Loggable.fromJson(json);
  }
}

/// @nodoc
const $Loggable = _$LoggableTearOff();

/// @nodoc
mixin _$Loggable {
  String get emailUsuario => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailUsuario, String senhaUsuario) signin,
    required TResult Function(
            String nomeCompleto, String emailUsuario, String senhaUsuario)
        signup,
    required TResult Function(
            String nomeCompleto, String emailUsuario, String token)
        authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailUsuario, String senhaUsuario)? signin,
    TResult Function(
            String nomeCompleto, String emailUsuario, String senhaUsuario)?
        signup,
    TResult Function(String nomeCompleto, String emailUsuario, String token)?
        authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailUsuario, String senhaUsuario)? signin,
    TResult Function(
            String nomeCompleto, String emailUsuario, String senhaUsuario)?
        signup,
    TResult Function(String nomeCompleto, String emailUsuario, String token)?
        authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggableSignin value) signin,
    required TResult Function(LoggableSignup value) signup,
    required TResult Function(LoggableAuthenticated value) authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoggableSignin value)? signin,
    TResult Function(LoggableSignup value)? signup,
    TResult Function(LoggableAuthenticated value)? authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggableSignin value)? signin,
    TResult Function(LoggableSignup value)? signup,
    TResult Function(LoggableAuthenticated value)? authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoggableCopyWith<Loggable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoggableCopyWith<$Res> {
  factory $LoggableCopyWith(Loggable value, $Res Function(Loggable) then) =
      _$LoggableCopyWithImpl<$Res>;
  $Res call({String emailUsuario});
}

/// @nodoc
class _$LoggableCopyWithImpl<$Res> implements $LoggableCopyWith<$Res> {
  _$LoggableCopyWithImpl(this._value, this._then);

  final Loggable _value;
  // ignore: unused_field
  final $Res Function(Loggable) _then;

  @override
  $Res call({
    Object? emailUsuario = freezed,
  }) {
    return _then(_value.copyWith(
      emailUsuario: emailUsuario == freezed
          ? _value.emailUsuario
          : emailUsuario // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $LoggableSigninCopyWith<$Res>
    implements $LoggableCopyWith<$Res> {
  factory $LoggableSigninCopyWith(
          LoggableSignin value, $Res Function(LoggableSignin) then) =
      _$LoggableSigninCopyWithImpl<$Res>;
  @override
  $Res call({String emailUsuario, String senhaUsuario});
}

/// @nodoc
class _$LoggableSigninCopyWithImpl<$Res> extends _$LoggableCopyWithImpl<$Res>
    implements $LoggableSigninCopyWith<$Res> {
  _$LoggableSigninCopyWithImpl(
      LoggableSignin _value, $Res Function(LoggableSignin) _then)
      : super(_value, (v) => _then(v as LoggableSignin));

  @override
  LoggableSignin get _value => super._value as LoggableSignin;

  @override
  $Res call({
    Object? emailUsuario = freezed,
    Object? senhaUsuario = freezed,
  }) {
    return _then(LoggableSignin(
      emailUsuario: emailUsuario == freezed
          ? _value.emailUsuario
          : emailUsuario // ignore: cast_nullable_to_non_nullable
              as String,
      senhaUsuario: senhaUsuario == freezed
          ? _value.senhaUsuario
          : senhaUsuario // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoggableSignin implements LoggableSignin {
  const _$LoggableSignin(
      {required this.emailUsuario, required this.senhaUsuario, String? $type})
      : $type = $type ?? 'signin';

  factory _$LoggableSignin.fromJson(Map<String, dynamic> json) =>
      _$$LoggableSigninFromJson(json);

  @override
  final String emailUsuario;
  @override
  final String senhaUsuario;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Loggable.signin(emailUsuario: $emailUsuario, senhaUsuario: $senhaUsuario)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoggableSignin &&
            (identical(other.emailUsuario, emailUsuario) ||
                other.emailUsuario == emailUsuario) &&
            (identical(other.senhaUsuario, senhaUsuario) ||
                other.senhaUsuario == senhaUsuario));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailUsuario, senhaUsuario);

  @JsonKey(ignore: true)
  @override
  $LoggableSigninCopyWith<LoggableSignin> get copyWith =>
      _$LoggableSigninCopyWithImpl<LoggableSignin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailUsuario, String senhaUsuario) signin,
    required TResult Function(
            String nomeCompleto, String emailUsuario, String senhaUsuario)
        signup,
    required TResult Function(
            String nomeCompleto, String emailUsuario, String token)
        authenticated,
  }) {
    return signin(emailUsuario, senhaUsuario);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailUsuario, String senhaUsuario)? signin,
    TResult Function(
            String nomeCompleto, String emailUsuario, String senhaUsuario)?
        signup,
    TResult Function(String nomeCompleto, String emailUsuario, String token)?
        authenticated,
  }) {
    return signin?.call(emailUsuario, senhaUsuario);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailUsuario, String senhaUsuario)? signin,
    TResult Function(
            String nomeCompleto, String emailUsuario, String senhaUsuario)?
        signup,
    TResult Function(String nomeCompleto, String emailUsuario, String token)?
        authenticated,
    required TResult orElse(),
  }) {
    if (signin != null) {
      return signin(emailUsuario, senhaUsuario);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggableSignin value) signin,
    required TResult Function(LoggableSignup value) signup,
    required TResult Function(LoggableAuthenticated value) authenticated,
  }) {
    return signin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoggableSignin value)? signin,
    TResult Function(LoggableSignup value)? signup,
    TResult Function(LoggableAuthenticated value)? authenticated,
  }) {
    return signin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggableSignin value)? signin,
    TResult Function(LoggableSignup value)? signup,
    TResult Function(LoggableAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (signin != null) {
      return signin(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoggableSigninToJson(this);
  }
}

abstract class LoggableSignin implements Loggable {
  const factory LoggableSignin(
      {required String emailUsuario,
      required String senhaUsuario}) = _$LoggableSignin;

  factory LoggableSignin.fromJson(Map<String, dynamic> json) =
      _$LoggableSignin.fromJson;

  @override
  String get emailUsuario;
  String get senhaUsuario;
  @override
  @JsonKey(ignore: true)
  $LoggableSigninCopyWith<LoggableSignin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoggableSignupCopyWith<$Res>
    implements $LoggableCopyWith<$Res> {
  factory $LoggableSignupCopyWith(
          LoggableSignup value, $Res Function(LoggableSignup) then) =
      _$LoggableSignupCopyWithImpl<$Res>;
  @override
  $Res call({String nomeCompleto, String emailUsuario, String senhaUsuario});
}

/// @nodoc
class _$LoggableSignupCopyWithImpl<$Res> extends _$LoggableCopyWithImpl<$Res>
    implements $LoggableSignupCopyWith<$Res> {
  _$LoggableSignupCopyWithImpl(
      LoggableSignup _value, $Res Function(LoggableSignup) _then)
      : super(_value, (v) => _then(v as LoggableSignup));

  @override
  LoggableSignup get _value => super._value as LoggableSignup;

  @override
  $Res call({
    Object? nomeCompleto = freezed,
    Object? emailUsuario = freezed,
    Object? senhaUsuario = freezed,
  }) {
    return _then(LoggableSignup(
      nomeCompleto: nomeCompleto == freezed
          ? _value.nomeCompleto
          : nomeCompleto // ignore: cast_nullable_to_non_nullable
              as String,
      emailUsuario: emailUsuario == freezed
          ? _value.emailUsuario
          : emailUsuario // ignore: cast_nullable_to_non_nullable
              as String,
      senhaUsuario: senhaUsuario == freezed
          ? _value.senhaUsuario
          : senhaUsuario // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoggableSignup implements LoggableSignup {
  const _$LoggableSignup(
      {required this.nomeCompleto,
      required this.emailUsuario,
      required this.senhaUsuario,
      String? $type})
      : $type = $type ?? 'signup';

  factory _$LoggableSignup.fromJson(Map<String, dynamic> json) =>
      _$$LoggableSignupFromJson(json);

  @override
  final String nomeCompleto;
  @override
  final String emailUsuario;
  @override
  final String senhaUsuario;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Loggable.signup(nomeCompleto: $nomeCompleto, emailUsuario: $emailUsuario, senhaUsuario: $senhaUsuario)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoggableSignup &&
            (identical(other.nomeCompleto, nomeCompleto) ||
                other.nomeCompleto == nomeCompleto) &&
            (identical(other.emailUsuario, emailUsuario) ||
                other.emailUsuario == emailUsuario) &&
            (identical(other.senhaUsuario, senhaUsuario) ||
                other.senhaUsuario == senhaUsuario));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, nomeCompleto, emailUsuario, senhaUsuario);

  @JsonKey(ignore: true)
  @override
  $LoggableSignupCopyWith<LoggableSignup> get copyWith =>
      _$LoggableSignupCopyWithImpl<LoggableSignup>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailUsuario, String senhaUsuario) signin,
    required TResult Function(
            String nomeCompleto, String emailUsuario, String senhaUsuario)
        signup,
    required TResult Function(
            String nomeCompleto, String emailUsuario, String token)
        authenticated,
  }) {
    return signup(nomeCompleto, emailUsuario, senhaUsuario);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailUsuario, String senhaUsuario)? signin,
    TResult Function(
            String nomeCompleto, String emailUsuario, String senhaUsuario)?
        signup,
    TResult Function(String nomeCompleto, String emailUsuario, String token)?
        authenticated,
  }) {
    return signup?.call(nomeCompleto, emailUsuario, senhaUsuario);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailUsuario, String senhaUsuario)? signin,
    TResult Function(
            String nomeCompleto, String emailUsuario, String senhaUsuario)?
        signup,
    TResult Function(String nomeCompleto, String emailUsuario, String token)?
        authenticated,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup(nomeCompleto, emailUsuario, senhaUsuario);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggableSignin value) signin,
    required TResult Function(LoggableSignup value) signup,
    required TResult Function(LoggableAuthenticated value) authenticated,
  }) {
    return signup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoggableSignin value)? signin,
    TResult Function(LoggableSignup value)? signup,
    TResult Function(LoggableAuthenticated value)? authenticated,
  }) {
    return signup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggableSignin value)? signin,
    TResult Function(LoggableSignup value)? signup,
    TResult Function(LoggableAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoggableSignupToJson(this);
  }
}

abstract class LoggableSignup implements Loggable {
  const factory LoggableSignup(
      {required String nomeCompleto,
      required String emailUsuario,
      required String senhaUsuario}) = _$LoggableSignup;

  factory LoggableSignup.fromJson(Map<String, dynamic> json) =
      _$LoggableSignup.fromJson;

  String get nomeCompleto;
  @override
  String get emailUsuario;
  String get senhaUsuario;
  @override
  @JsonKey(ignore: true)
  $LoggableSignupCopyWith<LoggableSignup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoggableAuthenticatedCopyWith<$Res>
    implements $LoggableCopyWith<$Res> {
  factory $LoggableAuthenticatedCopyWith(LoggableAuthenticated value,
          $Res Function(LoggableAuthenticated) then) =
      _$LoggableAuthenticatedCopyWithImpl<$Res>;
  @override
  $Res call({String nomeCompleto, String emailUsuario, String token});
}

/// @nodoc
class _$LoggableAuthenticatedCopyWithImpl<$Res>
    extends _$LoggableCopyWithImpl<$Res>
    implements $LoggableAuthenticatedCopyWith<$Res> {
  _$LoggableAuthenticatedCopyWithImpl(
      LoggableAuthenticated _value, $Res Function(LoggableAuthenticated) _then)
      : super(_value, (v) => _then(v as LoggableAuthenticated));

  @override
  LoggableAuthenticated get _value => super._value as LoggableAuthenticated;

  @override
  $Res call({
    Object? nomeCompleto = freezed,
    Object? emailUsuario = freezed,
    Object? token = freezed,
  }) {
    return _then(LoggableAuthenticated(
      nomeCompleto: nomeCompleto == freezed
          ? _value.nomeCompleto
          : nomeCompleto // ignore: cast_nullable_to_non_nullable
              as String,
      emailUsuario: emailUsuario == freezed
          ? _value.emailUsuario
          : emailUsuario // ignore: cast_nullable_to_non_nullable
              as String,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoggableAuthenticated implements LoggableAuthenticated {
  const _$LoggableAuthenticated(
      {required this.nomeCompleto,
      required this.emailUsuario,
      required this.token,
      String? $type})
      : $type = $type ?? 'authenticated';

  factory _$LoggableAuthenticated.fromJson(Map<String, dynamic> json) =>
      _$$LoggableAuthenticatedFromJson(json);

  @override
  final String nomeCompleto;
  @override
  final String emailUsuario;
  @override
  final String token;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Loggable.authenticated(nomeCompleto: $nomeCompleto, emailUsuario: $emailUsuario, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoggableAuthenticated &&
            (identical(other.nomeCompleto, nomeCompleto) ||
                other.nomeCompleto == nomeCompleto) &&
            (identical(other.emailUsuario, emailUsuario) ||
                other.emailUsuario == emailUsuario) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, nomeCompleto, emailUsuario, token);

  @JsonKey(ignore: true)
  @override
  $LoggableAuthenticatedCopyWith<LoggableAuthenticated> get copyWith =>
      _$LoggableAuthenticatedCopyWithImpl<LoggableAuthenticated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailUsuario, String senhaUsuario) signin,
    required TResult Function(
            String nomeCompleto, String emailUsuario, String senhaUsuario)
        signup,
    required TResult Function(
            String nomeCompleto, String emailUsuario, String token)
        authenticated,
  }) {
    return authenticated(nomeCompleto, emailUsuario, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailUsuario, String senhaUsuario)? signin,
    TResult Function(
            String nomeCompleto, String emailUsuario, String senhaUsuario)?
        signup,
    TResult Function(String nomeCompleto, String emailUsuario, String token)?
        authenticated,
  }) {
    return authenticated?.call(nomeCompleto, emailUsuario, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailUsuario, String senhaUsuario)? signin,
    TResult Function(
            String nomeCompleto, String emailUsuario, String senhaUsuario)?
        signup,
    TResult Function(String nomeCompleto, String emailUsuario, String token)?
        authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(nomeCompleto, emailUsuario, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggableSignin value) signin,
    required TResult Function(LoggableSignup value) signup,
    required TResult Function(LoggableAuthenticated value) authenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoggableSignin value)? signin,
    TResult Function(LoggableSignup value)? signup,
    TResult Function(LoggableAuthenticated value)? authenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggableSignin value)? signin,
    TResult Function(LoggableSignup value)? signup,
    TResult Function(LoggableAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoggableAuthenticatedToJson(this);
  }
}

abstract class LoggableAuthenticated implements Loggable {
  const factory LoggableAuthenticated(
      {required String nomeCompleto,
      required String emailUsuario,
      required String token}) = _$LoggableAuthenticated;

  factory LoggableAuthenticated.fromJson(Map<String, dynamic> json) =
      _$LoggableAuthenticated.fromJson;

  String get nomeCompleto;
  @override
  String get emailUsuario;
  String get token;
  @override
  @JsonKey(ignore: true)
  $LoggableAuthenticatedCopyWith<LoggableAuthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}
