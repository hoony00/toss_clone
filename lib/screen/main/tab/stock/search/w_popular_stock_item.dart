import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

import '../vo_popular_stock.dart';

class PopularStockItem extends StatelessWidget {
  final PopularStock stock;
  final int number;

  const PopularStockItem(
      {super.key, required this.stock, required this.number});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
                width:40,
                child: number.text.make()),
            width30,
            stock.Name.text.make(),
            const EmptyExpanded(),
            stock.todayPercentageString.text
                .color(stock.getPriceColor(context))
                .make(),
          ],
        ).pSymmetric(v: 20),
      ],
    );
  }
}
