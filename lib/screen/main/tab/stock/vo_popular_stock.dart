import 'package:fast_app_base/screen/main/tab/stock/stock_percentage_data_provider.dart';
import 'package:fast_app_base/screen/main/tab/stock/vo_simple_stock.dart';

class vo_popular_stock extends SimpleStock with StockPercentageDataProvider{

  @override
  final int yesterdayClosePrice;
  @override
  final int currentPrice;

  vo_popular_stock(
      {required this.yesterdayClosePrice,
      required this.currentPrice,
      required String stockName}) : super(stockName);

}
