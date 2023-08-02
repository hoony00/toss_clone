import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:fast_app_base/common/widget/w_long_button.dart';
import 'package:fast_app_base/common/widget/w_rounded_Container.dart';
import 'package:flutter/material.dart';

class MyStockFragment extends StatelessWidget {
  const MyStockFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        getMyAccount(context),
        heigth20,
        getMyStock(context),
      ],
    );
  }

  Widget getMyAccount(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        color: context.appColors.roundedLaoutButtonBackground,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            heigth20,
            '계좌'.text.make(),
            Row(
              children: [
                '433원'.text.size(24).bold.make(),
                Arrow(),
                const EmptyExpanded(),
                RoundedContainer(
                  child: '채우기'.text.size(12).make(),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  backgroundColor: context.appColors.buttonBackground,
                  radius: 8,
                ),
              ],
            ),
            heigth30,
            Line(
              color: context.appColors.divider,
            ),
            heigth10,
            const LongButton(title: '주문내역'),
            const LongButton(title: '판매수익'),
          ],
        ),
      );

  Widget getMyStock(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 20),
        color: context.appColors.roundedLaoutButtonBackground,
    child: Column(
      children: [
        heigth30,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            '관심주식'.text.bold.make(),
            '편집하기'.text.color(context.appColors.lessImportant).make(),
          ],
        ),
        heigth20,
        Tap(
          onTap: (){context.showSnackbar('기본');},
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                '기본'.text.make(),
                Arrow(direction: AxisDirection.up,),
              ],
            ),
          ),
        ),
      ],
    ),
      );
}
