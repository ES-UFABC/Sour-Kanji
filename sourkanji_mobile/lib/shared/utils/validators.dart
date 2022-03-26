typedef Validator<T> = String? Function(T? value);

abstract class Validators {
  static bool hasMatch(String? value, String pattern) {
    return (value == null) ? false : RegExp(pattern).hasMatch(value);
  }

  /// [Validator] that is composed of other [Validator]s.
  /// Each validator is run against the [FormField] value and if any returns a
  /// non-null result validation fails, otherwise, validation passes
  static Validator<T> compose<T>(List<Validator<T>> validators) {
    return (T? valueCandidate) {
      for (final validator in validators) {
        final validatorResult = validator.call(valueCandidate);
        if (validatorResult != null) {
          return validatorResult;
        }
      }
      return null;
    };
  }

  /// [Validator] that requires the field have a non-empty value.
  static Validator<T> required<T>({String? error}) {
    return (T? valueCandidate) {
      if (valueCandidate == null ||
          (valueCandidate is String && valueCandidate.trim().isEmpty) ||
          (valueCandidate is Iterable && valueCandidate.isEmpty) ||
          (valueCandidate is Map && valueCandidate.isEmpty)) {
        return error ?? "validator_error_required";
      }
      return null;
    };
  }

  /// [Validator] that requires the field's value be equal to the
  /// provided value.
  static Validator<T> equal<T>(
    T? value, {
    String? error,
  }) =>
      (T? valueCandidate) =>
          valueCandidate != value ? error ?? "validator_error_equal" : null;

  /// [Validator] that requires the field's value be not equal to
  /// the provided value.
  static Validator<T> notEqual<T>(
    T? value, {
    String? error,
  }) =>
      (valueCandidate) =>
          valueCandidate == value ? error ?? "validator_error_not_equal" : null;

  /// [Validator] that requires the field's value to be greater than
  /// (or equal) to the provided number.
  static Validator<T> min<T>(
    num min, {
    bool inclusive = true,
    String? error,
  }) {
    return (T? valueCandidate) {
      if (valueCandidate != null) {
        assert(valueCandidate is num || valueCandidate is String);
        final number = valueCandidate is num
            ? valueCandidate
            : num.tryParse(valueCandidate.toString());

        if (number != null && (inclusive ? number < min : number <= min)) {
          return error ??
              (inclusive
                  ? "validator_error_min_inclusive"
                  : "validator_error_min");
        }
      }
      return null;
    };
  }

  /// [Validator] that requires the field's value to be less than
  /// (or equal) to the provided number.
  static Validator<T> max<T>(
    num max, {
    bool inclusive = true,
    String? error,
  }) {
    return (T? valueCandidate) {
      if (valueCandidate != null) {
        assert(valueCandidate is num || valueCandidate is String);
        final number = valueCandidate is num
            ? valueCandidate
            : num.tryParse(valueCandidate.toString());

        if (number != null && (inclusive ? number > max : number >= max)) {
          return error ??
              (inclusive
                  ? "validator_error_max_inclusive"
                  : "validator_error_max");
        }
      }
      return null;
    };
  }

  /// [Validator] that requires the length of the field's value to be
  /// greater than or equal to the provided minimum length.
  static Validator<String> minLength(
    int minLength, {
    bool allowEmpty = false,
    String? error,
  }) {
    assert(minLength > 0);
    return (String? valueCandidate) {
      final valueLength = valueCandidate?.length ?? 0;
      return valueLength < minLength && (!allowEmpty || valueLength > 0)
          ? error ?? "validator_error_min_length"
          : null;
    };
  }

  /// [Validator] that requires the length of the field's value to be
  /// less than or equal to the provided maximum length.
  static Validator<String> maxLength(
    int maxLength, {
    String? error,
  }) {
    assert(maxLength > 0);
    return (String? valueCandidate) =>
        null != valueCandidate && valueCandidate.length > maxLength
            ? error ?? "validator_error_max_length"
            : null;
  }

  /// [Validator] that requires the field's value to be a valid email address.
  static Validator<String> email({
    String? error,
  }) =>
      (String? valueCandidate) => true == valueCandidate?.isNotEmpty &&
              !hasMatch(valueCandidate!.trim(),
                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
          ? error ?? "validator_error_email"
          : null;

  /// [Validator] that requires the field's value to match the provided regex pattern.
  static Validator<String> match(
    String pattern, {
    String? error,
  }) =>
      (valueCandidate) => true == valueCandidate?.isNotEmpty &&
              !RegExp(pattern).hasMatch(valueCandidate!)
          ? error ?? "validator_error_match"
          : null;

  /// [Validator] that requires the field's value to be a valid number.
  static Validator<String> numeric({
    String? error,
  }) =>
      (String? valueCandidate) => true == valueCandidate?.isNotEmpty &&
              null == num.tryParse(valueCandidate!)
          ? error ?? "validator_error_numeric"
          : null;

  /// [Validator] that requires the field's value to be a valid integer.
  static Validator<String> integer({
    String? error,
    int? radix,
  }) =>
      (String? valueCandidate) => true == valueCandidate?.isNotEmpty &&
              null == int.tryParse(valueCandidate!, radix: radix)
          ? error ?? "validator_error_integer"
          : null;

  /// [Validator] that requires the field's value to be a valid integer.
  static Validator<String> year({
    String? error,
    int? radix,
    int? maxYear,
    int minYear = 1900,
  }) =>
      (String? valueCandidate) {
        if (valueCandidate?.isNotEmpty != true) {
          return error ?? "validator_error_year";
        }
        int? value = int.tryParse(valueCandidate!, radix: radix);
        if (value == null ||
            value < minYear ||
            value > (maxYear ?? DateTime.now().year)) {
          return error ?? "validator_error_year";
        }
        return null;
      };

  /// [Validator] that requires the field's value to be a valid email address.
  static Validator<String> bic({
    String? error,
  }) =>
      (String? valueCandidate) => true == valueCandidate?.isNotEmpty &&
              !RegExp(r"^([A-Z]{6}[A-Z2-9][A-NP-Z1-2])(X{3}|[A-WY-Z0-9][A-Z0-9]{2})?$")
                  .hasMatch(valueCandidate!)
          ? error ?? "validator_error_bic"
          : null;
}
