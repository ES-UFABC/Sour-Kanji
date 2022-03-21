import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_state.freezed.dart';

@freezed
class PageState<T, F> with _$PageState<T, F> {
  const factory PageState.idle() = PageStateIdle<T, F>;
  const factory PageState.loading() = PageStateLoading<T, F>;
  const factory PageState.success(T data) = PageStateSuccess<T, F>;
  const factory PageState.error({String? message, F? failure}) =
      PageStateError<T, F>;
  const factory PageState.empty() = PageStateEmpty<T, F>;
}
