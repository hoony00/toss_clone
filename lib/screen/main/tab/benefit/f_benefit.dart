import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/s_main.dart';
import 'package:fast_app_base/screen/main/tab/benefit/benefits_dummy.dart';
import 'package:fast_app_base/screen/main/tab/benefit/vo_benefit_item.dart';
import 'package:fast_app_base/screen/main/tab/benefit/w_point_button.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class BenefitFragment extends StatefulWidget {
  const BenefitFragment({super.key});

  @override
  State<BenefitFragment> createState() => _BenefitFragmentState();
}

class _BenefitFragmentState extends State<BenefitFragment> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(bottom: MainScreenState.bottomNavigatorheight),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          heigth30,
          "혜택".text.white.bold.size(18).make(),
          heigth30,
          const PointButton(
            point: 569,
          ),
          heigth20,
          "혜택 더 받기".text.bold.white.size(12).make(),

          ...benefitList.map((element) =>BenefitItem(benefit: element,) ).toList()

        ],
      ).pSymmetric(h: 20),
    );
  }
}
