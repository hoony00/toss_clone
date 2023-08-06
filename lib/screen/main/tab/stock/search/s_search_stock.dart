import 'package:fast_app_base/screen/main/tab/stock/search/search_stock_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'w_popular_search_stock_list.dart';
import 'w_search_autu_complete_list.dart';
import 'w_search_history_stock_list.dart';
import 'w_stock_search_app_bar.dart';

class SearchStockScreen extends StatefulWidget {
  const SearchStockScreen({super.key});

  @override
  State<SearchStockScreen> createState() => _SearchStockScreenState();
}

class _SearchStockScreenState extends State<SearchStockScreen> with SearchStockDataProvider{
  final controller = TextEditingController();

  @override
  void initState() {
    Get.put(SearchStockData());
    controller.addListener(() {
      //리스너를 등록하면 컨트롤러에 어떤 이벤트가 수행될 때 해당 리스너가 시작
      searchData.search( controller.text);
    });
    super.initState();
  }

  @override
  void dispose() {
    Get.delete<SearchStockData>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StockSearchAppBar(
        controller: controller,
      ),
      body: Obx( () => searchData.autoCompleteList.isEmpty
      //Obs는 셋스테이트 대신 Rxlist에 변화가 감지되면 obs 아래 위젯만 화면 갱신해서 setState보다 훨신 좋음
            ? ListView(
                //리스트가 많으면 칠드런 말고 빌드를 써야함 칠드런은 대용량에 적합 x
                children: const [
                  SearchHistoryStockList(),
                  PopularSearchStockList(),
                ],
              )
            : SearchAutoCompleteList(controller),
      ),
    );
  }
}
