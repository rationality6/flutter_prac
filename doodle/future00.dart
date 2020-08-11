// import 'dart:io';

main() {
  showData();
}

void showData() async {
  startTask();
  var result = await accessData();
  fetchData(result);
}

void startTask() {
  String info1 = '요청수행 시작';
  print(info1);
}

Future<String> accessData() async {
  String account;
  Duration time = Duration(seconds: 3);
  // sleep(time);

  await Future.delayed(time, () {
    account = '8500만원';
  });

  return account;
}

void fetchData(account) {
  String info3 = '잔액은 $account 입니다';
  print(info3);
}
