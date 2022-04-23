import 'dart:ui';

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 5),
            Text('KANJI',
                style: context.textTheme.headline6?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.right),
            const SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 16,
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
                margin: EdgeInsets.symmetric(vertical: 20),
                width: MediaQuery.of(context).size.width,
                height: 115.96,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.primary, width: 5)),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: AppColors.primary,
                        border: Border.all(
                            color: AppColors.yellowSourKanji, width: 5)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(left: 10),
                                child: Image.asset(
                                  "assets/images/speaker.png",
                                  fit: BoxFit.cover,
                                  width: 10,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            child: Image.asset(
                              "assets/images/kanji_1.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(right: 24),
                            child: Image.asset(
                              "assets/images/arrow.png",
                              width: 10,
                            ),
                          ),
                        ],
                      ),
                    ))),
            Container(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                              color: AppColors.lightGreenSourKanji,
                              border: Border.all(color: AppColors.primary)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 16),
                            child: Text(
                              'MEANING',
                              style: context.textTheme.caption?.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.primary),
                            ),
                          ))),
                  SizedBox(width: 10),
                  Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                              color: AppColors.yellowSourKanji,
                              border: Border.all(color: AppColors.primary)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 16),
                            child: Text(
                              'READING',
                              style: context.textTheme.caption?.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.primary),
                            ),
                          ))),
                  SizedBox(width: 10),
                  Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                              color: AppColors.pinkSourKanji,
                              border: Border.all(color: AppColors.primary)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 16),
                            child: Text(
                              'PHRASES',
                              style: context.textTheme.caption?.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.primary),
                            ),
                          )))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 35, left: 35, top: 60),
              child: Image.asset("assets/images/lemon4x.png"),
            )
          ],
        ),
      ),
    );
  }
}
