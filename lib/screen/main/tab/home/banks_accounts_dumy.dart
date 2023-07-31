import 'package:fast_app_base/screen/main/tab/home/banks_dumy.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';


final bankAccountShinhan1 =
    BankAccount(bankShinhan, 3000000, accountTypeName: "신한 주거래 우대통장(저축예금)");
final bankAccountShinhan2 =
    BankAccount(bankShinhan, 70000, accountTypeName: "상훈연습");
final bankAccountShinhan3 =
    BankAccount(bankShinhan, 242000000, accountTypeName: "돈 언제 버냐");
final bankAccountToss = BankAccount(bankTtoss, 421245);
final bankAccountKakao =
    BankAccount(bankKakao, 600000, accountTypeName: "hi nan sanghoon");


//List : 순서를 보장해주는 객체의 리스트
final bankAccounts = [
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountKakao,
  bankAccountToss,
];

//Map  키-쌍 , 순서 x
final bankMap = {
 // key : value
  "shinhan1" : bankAccountShinhan1,
  "shinhan2" : bankAccountShinhan2,
  "shinhan3" : bankAccountShinhan3,
};
/* 예시
for (final entry in bankMap.entries){
  print(entry.key + ":"+ (entry.value.accountTypeName ?? entry.value.bank.name);
}*/

//Set  리스트와 맵 중간지점 (데이터 존재 여부로 보통 씀)
final bankSet = { bankAccountShinhan1, bankAccountShinhan2};
 // 예시 print(bankSet.contains(bankshinhan1));
