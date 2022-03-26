import 'package:flutter/material.dart';
import 'package:sourkanji_mobile/presentation/widgets/sk_social_media_button.dart';

class SkSocialMedias extends StatelessWidget {
  const SkSocialMedias({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SkSocialMediaButton.facebook(
          onPressed: () {},
        ),
        SkSocialMediaButton.instagram(
          onPressed: () {},
        ),
        SkSocialMediaButton.google(
          onPressed: () {},
        ),
        SkSocialMediaButton.gitlab(
          onPressed: () {},
        ),
      ],
    );
  }
}
