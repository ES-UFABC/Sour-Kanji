import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sourkanji_mobile/presentation/kanji/kanji_controller.dart';
import 'package:sourkanji_mobile/presentation/theme/app_colors.dart';
import 'package:sourkanji_mobile/presentation/theme/app_dimensions.dart';
import 'package:sourkanji_mobile/presentation/widgets/sk_base_page.dart';
import 'package:sourkanji_mobile/shared/extensions/build_context_ext.dart';

class KanjiPage extends StatefulWidget {
  const KanjiPage({
    Key? key,
  }) : super(key: key);

  @override
  State<KanjiPage> createState() => _KanjiPageState();
}

class _KanjiPageState extends ModularState<KanjiPage, KanjiControler> {
  @override
  Widget build(BuildContext context) {
    return SkBasePage(
      body: Padding(
        padding: const EdgeInsets.all(AppDimensions.basePagePadding),
        child: Column(
          children: [
            const SizedBox(height: 5),
            Text('KANJI',
                style: context.textTheme.headline6?.copyWith(
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.right),
            const SizedBox(height: 20),
            Container(
              width: 297.73,
              height: 16.23,
              decoration: BoxDecoration(
                  color: AppColors.primary,
                  border: Border.all(color: AppColors.primary)),
              child: const LinearProgressIndicator(
                value: 0.5,
                valueColor: AlwaysStoppedAnimation(AppColors.primary),
                backgroundColor: AppColors.scaffoldBackgroundColor,
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(0, 21, 0, 18),
                width: 297.73,
                height: 115.96,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.primary, width: 5)),
                child: Container(
                    width: 297.73,
                    height: 115.96,
                    decoration: BoxDecoration(
                        color: AppColors.primary,
                        border: Border.all(
                            color: AppColors.yellowSourKanji, width: 5)),
                    child: Text(
                      'Kanji #1:',
                      style: context.textTheme.headline6?.copyWith(
                          fontWeight: FontWeight.w400,
                          color: AppColors.scaffoldBackgroundColor),
                    ))),
            Container(
              width: 297.73,
              child: Row(
                children: [
                  Container(
                      child: Container(
                          width: 92.48,
                          height: 26.67,
                          decoration: BoxDecoration(
                              color: AppColors.lightGreenSourKanji,
                              border: Border.all(color: AppColors.primary)),
                          child: Text(
                            'MEANING',
                            style: context.textTheme.headline6?.copyWith(
                                fontWeight: FontWeight.w400,
                                color: AppColors.primary),
                          ))),
                  Container(
                      child: Container(
                          margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          width: 92.48,
                          height: 26.67,
                          decoration: BoxDecoration(
                              color: AppColors.yellowSourKanji,
                              border: Border.all(color: AppColors.primary)),
                          child: Text(
                            'READING',
                            style: context.textTheme.headline6?.copyWith(
                                fontWeight: FontWeight.w400,
                                color: AppColors.primary),
                          ))),
                  Container(
                      child: Container(
                          width: 92.48,
                          height: 26.67,
                          decoration: BoxDecoration(
                              color: AppColors.pinkSourKanji,
                              border: Border.all(color: AppColors.primary)),
                          child: Text(
                            'PHRASES',
                            style: context.textTheme.headline6?.copyWith(
                                fontWeight: FontWeight.w400,
                                color: AppColors.primary),
                          )))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
