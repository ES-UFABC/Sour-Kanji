import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sourkanji_mobile/domain/auth/auth_failure.dart';
import 'package:sourkanji_mobile/domain/auth/i_auth_repository.dart';
import 'package:sourkanji_mobile/domain/auth/loggable.dart';
import 'package:sourkanji_mobile/domain/services/auth_service.dart';
import 'package:sourkanji_mobile/domain/services/session_service.dart';
import 'package:sourkanji_mobile/presentation/home/home_module.dart';
import 'package:sourkanji_mobile/presentation/widgets/sk_button.dart';
import 'package:sourkanji_mobile/shared/models/page_state.dart';

typedef SigninPageState = PageState<dynamic, AuthFailure>;

class SigninCubit extends Cubit<SigninPageState> {
  SigninCubit({
    required IAuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(const SigninPageState.idle());

  final IAuthRepository _authRepository;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late String email, password;

  SkButtonState get buttonState {
    if (state == const SigninPageState.loading()) {
      return SkButtonState.loading;
    } else {
      return SkButtonState.enabled;
    }
  }

  Future<void> signin() async {
    final bool isFormValid = formKey.currentState?.validate() ?? false;
    if (isFormValid) {
      emit(const SigninPageState.loading());
      formKey.currentState?.save();

      final resultOption = await AuthService.to.signin(
        LoggableSignin(emailUsuario: email, senhaUsuario: password),
      );
      resultOption.fold(
        () {
          Modular.to.pushNamedAndRemoveUntil(
            HomeModule.path,
            (Route route) => false,
          );
        },
        (a) {
          emit(SigninPageState.error());
          SessionService().scaffoldMessengerKey.currentState?.showSnackBar(
                const SnackBar(content: Text("Login e/ou senha inválido(s)")),
              );
        },
      );
    }
  }

  void onBack() => Modular.to.pop();
}
