import 'package:flutter/material.dart';

import '../../../../../common/common.dart';
import '../vo_stock.dart';

class StockItem extends StatelessWidget {
  final Stock stock;
  const StockItem(this.stock, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.backgroundColor,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          width10,
          Image.asset(stock.stockImagePath, width: 50),
          width20,
          (stock.Name).text.size(10).bold.make(),
          EmptyExpanded(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
            //오늘의 가격 - 전날의 가격 - %
            stock.todayPercentageString.text.color(stock.getPriceColor(context)).make(),
            "${stock.currentPrice.toComma()}원".text.color(context.appColors.lessImportant).make(),
          ],

          ),
        ],
      ),
    );
  }
}
