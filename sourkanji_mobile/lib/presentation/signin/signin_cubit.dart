import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:sourkanji_mobile/domain/auth/auth_failure.dart';
import 'package:sourkanji_mobile/shared/models/page_state.dart';

typedef SigninPageState = PageState<dynamic, AuthFailure>;

class SigninCubit extends Cubit<SigninPageState> {
  SigninCubit() : super(const SigninPageState.idle());

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Future<void> signin() async {
    final bool isFormValid = formKey.currentState?.validate() ?? false;
    if (isFormValid) {
      emit(const SigninPageState.loading());
      await Future.delayed(const Duration(seconds: 2));
      emit(const SigninPageState.success(null));
    }
  }
}
