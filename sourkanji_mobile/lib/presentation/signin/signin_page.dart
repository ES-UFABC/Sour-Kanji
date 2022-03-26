import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sourkanji_mobile/presentation/signin/signin_cubit.dart';
import 'package:sourkanji_mobile/presentation/theme/app_dimensions.dart';
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
    return Scaffold(
      body: Form(
        key: cubit.formKey,
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(AppDimensions.basePagePadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: context.ph(0.1)),
              const Text(
                "Email:",
              ),
              TextFormField(
                validator: Validators.required(error: "Campo obrigatório."),
              ),
              const SizedBox(height: 15),
              const Text(
                "Password",
              ),
              TextFormField(
                validator: Validators.required(error: "Campo obrigatório."),
              ),
              const SizedBox(height: 15),
              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: cubit.signin,
                  child: const Text("Log in"),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
