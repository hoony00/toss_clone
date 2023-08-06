import 'package:fast_app_base/common/util/local_json.dart';
import 'package:get/get.dart';

import '../vo_simple_stock.dart';

abstract mixin class SearchStockDataProvider{
  late final searchData = Get.find<SearchStockData>();

}

class SearchStockData extends GetxController {
  List<SimpleStock> stocks = [];
  RxList<String> searchHistoryList = <String>[].obs; //검색 히스토리
  RxList<SimpleStock> autoCompleteList = <SimpleStock>[].obs; //자동완성
//Rx는 리스트에 값이 변하면 자동으로 화면도 변함

  //onInit 함수는 getx controller 가 처음 호출 될 때 같이 호출 됌
  @override
  void onInit() {
    searchHistoryList.addAll(['삼성전자', 'LG전자', '현대차', '넷플릭스']);
    loadLocalStockJson();
    super.onInit();
  }

  Future<void> loadLocalStockJson() async {
    final jsonList = await LocalJson.getObjectList<SimpleStock>(
        'json/stock_list.json');
    stocks.addAll(jsonList);
  }

  void search(String keyword) {
    if(keyword.isEmpty){
      autoCompleteList.clear();
      return;
    }
    autoCompleteList.value =
        stocks.where((element) => element.Name.contains(keyword)).toList();

  }

  void addHistory(SimpleStock stock) {
    searchHistoryList.add(stock.Name);
  }

  void removeHistory(String stockName) {
    searchHistoryList.remove(stockName);
  }
}

