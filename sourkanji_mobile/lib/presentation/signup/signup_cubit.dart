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

typedef SignupPageState = PageState<LoggableAuthenticated?, AuthFailure>;

class SignupCubit extends Cubit<SignupPageState> {
  SignupCubit({
    required IAuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(const SignupPageState.idle());

  final IAuthRepository _authRepository;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late String fullName, email, password, repeatPassword;

  SkButtonState get buttonState {
    if (state == const SignupPageState.loading()) {
      return SkButtonState.loading;
    } else {
      return SkButtonState.enabled;
    }
  }

  Future<void> signup() async {
    final bool isFormValid = formKey.currentState?.validate() ?? false;
    if (isFormValid) {
      formKey.currentState?.save();
      if (password == repeatPassword) {
        emit(const SignupPageState.loading());
        final result = await _authRepository.signup(
          LoggableSignup(
            nomeCompleto: fullName,
            emailUsuario: email,
            senhaUsuario: password,
          ),
        );
        result.fold(
          onSignupSuccess,
          (failure) => emit(
            SignupPageState.error(failure: failure),
          ),
        );
      } else {
        SessionService().scaffoldMessengerKey.currentState?.showSnackBar(
              const SnackBar(content: Text("Senha inválida")),
            );
      }
    }
  }

  Future<void> onSignupSuccess() async {
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
      (a) => Modular.to.pop(),
    );
  }

  void onBack() => Modular.to.pop();
}
