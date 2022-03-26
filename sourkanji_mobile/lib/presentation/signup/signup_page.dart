import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sourkanji_mobile/presentation/signup/signup_cubit.dart';
import 'package:sourkanji_mobile/presentation/theme/app_dimensions.dart';
import 'package:sourkanji_mobile/presentation/widgets/sk_base_page.dart';
import 'package:sourkanji_mobile/presentation/widgets/sk_button.dart';
import 'package:sourkanji_mobile/shared/utils/validators.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends ModularState<SignupPage, SignupCubit> {
  @override
  Widget build(BuildContext context) {
    return SkBasePage(
      showBack: true,
      onBack: cubit.onBack,
      body: Form(
        key: cubit.formKey,
        child: Padding(
          padding: const EdgeInsets.all(AppDimensions.basePagePadding),
          child: BlocBuilder<SignupCubit, SignupPageState>(
            bloc: cubit,
            builder: (ctx, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Nome completo*",
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    validator: Validators.required(error: "Campo obrigatório."),
                    onSaved: (v) => cubit.fullName = v ?? "",
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Email*",
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    validator: Validators.required(error: "Campo obrigatório."),
                    onSaved: (v) => cubit.email = v ?? "",
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Password*",
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    obscureText: true,
                    validator: Validators.compose([
                      Validators.required(error: "Campo obrigatório."),
                      Validators.minLength(
                        8,
                        error: "Senha deve ter pelo menos 8 characteres.",
                      ),
                    ]),
                    onSaved: (v) => cubit.password = v ?? "",
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Repeat password*",
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    obscureText: true,
                    validator: Validators.compose([
                      Validators.required(error: "Campo obrigatório."),
                    ]),
                    onSaved: (v) => cubit.repeatPassword = v ?? "",
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: double.maxFinite,
                    child: SkButton(
                      onPressed: cubit.signup,
                      state: cubit.buttonState,
                      label: "REGISTER",
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
