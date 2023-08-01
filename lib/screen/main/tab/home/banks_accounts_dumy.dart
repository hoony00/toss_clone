import 'package:fast_app_base/screen/main/tab/home/banks_dumy.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';


final bankAccountShinhan1 =
    BankAccount(bankShinhan, 3000000, accountTypeName: "신한 주거래 우대통장(저축예금)");
final bankAccountShinhan2 =
    BankAccount(bankShinhan, 70000000000, accountTypeName: "신한 청년 희망 적금");
final bankAccountShinhan3 =
    BankAccount(bankShinhan, 242000000);
final bankAccountToss1 = BankAccount(bankTtoss, 421245, accountTypeName: "토스뱅크 저축예끔");
final bankAccountToss2 = BankAccount(bankTtoss, 4654511, accountTypeName: "토스뱅크 건물대장");
final bankAccountToss3 = BankAccount(bankTtoss, 70000000, accountTypeName: "토뱅 용돈");
final bankAccountToss4 = BankAccount(bankTtoss, 70000000, );
final bankAccountKakao1 = BankAccount(bankKakao, 605000, accountTypeName: "hi nan sanghoon");
final bankAccountKakao2 = BankAccount(bankKakao, 20000000, accountTypeName: "카카오 뱅크 대출금");
final bankAccountKakao3 = BankAccount(bankKakao, 300000);
final bankAccountKakao4 = BankAccount(bankKakao, 4000);


//List : 순서를 보장해주는 객체의 리스트 // toSet , toList 등 변경 가능
final bankAccounts = [
  bankAccountShinhan2,
  bankAccountToss2,
  bankAccountKakao2,
  bankAccountKakao1,
  bankAccountKakao4,
  bankAccountToss1,
  bankAccountShinhan1,/**/
  bankAccountShinhan3,
  bankAccountToss3,
  bankAccountToss4,
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
