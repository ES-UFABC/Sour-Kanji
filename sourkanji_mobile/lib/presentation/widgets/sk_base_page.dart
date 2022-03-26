import 'package:flutter/material.dart';
import 'package:sourkanji_mobile/presentation/theme/app_dimensions.dart';
import 'package:sourkanji_mobile/presentation/widgets/sk_social_medias.dart';
import 'package:sourkanji_mobile/shared/extensions/build_context_ext.dart';

class SkBasePage extends StatefulWidget {
  const SkBasePage({Key? key, this.body}) : super(key: key);

  final Widget? body;

  @override
  State<SkBasePage> createState() => _SkBasePageState();
}

class _SkBasePageState extends State<SkBasePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: context.ph(0.12),
            toolbarHeight: kToolbarHeight,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              titlePadding: EdgeInsets.zero,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: context.mediaQuery.viewPadding.top),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Image.asset(
                        "assets/images/logo.png",
                        fit: BoxFit.fitWidth,
                        width: context.pw(0.4),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: context.mediaQuery.size.height * 0.8,
              ),
              child: widget.body ?? const SizedBox(),
            ),
          ),

          // Footer
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(
                bottom: context.mediaQuery.viewPadding.bottom +
                    AppDimensions.basePagePadding,
                top: AppDimensions.basePagePadding,
                left: AppDimensions.basePagePadding,
                right: AppDimensions.basePagePadding,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SkSocialMedias(),
                  const SizedBox(height: 20),
                  Image.asset(
                    "assets/images/logo.png",
                    height: 60,
                  ),
                  Center(
                    child: Text(
                      "© 2022 SourKanji. The MIT License",
                      style: context.textTheme.overline,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
