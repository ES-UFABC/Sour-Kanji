import 'package:flutter/material.dart';

class SkSocialMediaButton extends StatelessWidget {
  const SkSocialMediaButton.facebook({
    this.onPressed,
    Key? key,
  })  : name = "facebook_icon.png",
        super(key: key);
  const SkSocialMediaButton.gitlab({
    this.onPressed,
    Key? key,
  })  : name = "gitlab_icon.png",
        super(key: key);
  const SkSocialMediaButton.google({
    this.onPressed,
    Key? key,
  })  : name = "google_icon.png",
        super(key: key);
  const SkSocialMediaButton.instagram({
    this.onPressed,
    Key? key,
  })  : name = "instagram_icon.png",
        super(key: key);

  final String name;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/images/$name"),
          ),
        ),
      ),
    );
  }
}
