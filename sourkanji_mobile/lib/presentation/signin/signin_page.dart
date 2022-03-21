import 'package:flutter/material.dart';
import 'package:sourkanji_mobile/presentation/theme/app_dimensions.dart';
import 'package:sourkanji_mobile/shared/extensions/build_context_ext.dart';

class SigninPage extends StatefulWidget {
  SigninPage({Key? key}) : super(key: key);

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(AppDimensions.basePagePadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: context.ph(0.1)),
            const Text(
              "Email:",
            ),
            TextFormField(),
            const SizedBox(height: 15),
            const Text(
              "Password",
            ),
            TextFormField(),
            const SizedBox(height: 15),
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Log in"),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
