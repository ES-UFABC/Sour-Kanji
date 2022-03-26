import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sourkanji_mobile/presentation/signin/signin_cubit.dart';
import 'package:sourkanji_mobile/presentation/theme/app_dimensions.dart';
import 'package:sourkanji_mobile/presentation/widgets/sk_base_page.dart';
import 'package:sourkanji_mobile/presentation/widgets/sk_button.dart';
import 'package:sourkanji_mobile/shared/extensions/build_context_ext.dart';
import 'package:sourkanji_mobile/shared/utils/validators.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends ModularState<SigninPage, SigninCubit> {
  @override
  Widget build(BuildContext context) {
    return SkBasePage(
      showBack: true,
      onBack: cubit.onBack,
      body: Form(
        key: cubit.formKey,
        child: Padding(
          padding: const EdgeInsets.all(AppDimensions.basePagePadding),
          child: BlocBuilder(
              bloc: cubit,
              builder: (ctx, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Email:",
                    ),
                    TextFormField(
                      validator:
                          Validators.required(error: "Campo obrigatório."),
                      onSaved: (v) => cubit.email = v ?? "",
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "Password",
                    ),
                    TextFormField(
                      obscureText: true,
                      validator:
                          Validators.required(error: "Campo obrigatório."),
                      onSaved: (v) => cubit.password = v ?? "",
                    ),
                    const SizedBox(height: 15),
                    SizedBox(
                      width: double.maxFinite,
                      child: SkButton(
                        onPressed: cubit.signin,
                        state: cubit.buttonState,
                        label: "Log In",
                      ),
                    ),
                  ],
                );
              }),
        ),
      ),
    );
  }
}
