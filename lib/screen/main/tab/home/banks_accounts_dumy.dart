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

main(){
  print(bankAccounts[4].accountTypeName);
}

final bankAccounts = [
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountKakao,
  bankAccountToss,
];
