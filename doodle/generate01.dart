List<int> generator() {
  List<int> myList = [12, 34, 33, 23, 646, 443];
  List<int> reversedList0 = List.from(myList.reversed);
  print(reversedList0);
  return reversedList0;
}

main() {
  print(generator());
}
