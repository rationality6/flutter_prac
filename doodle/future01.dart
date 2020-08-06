Future<void> fetchUserOrder() {
  Duration time = Duration(seconds: 3);
  return Future.delayed(time, () => print('Large Latte'));
}

void main() {
  fetchUserOrder();
  // print('Large Latte');
  print('Fetching user order...');
}
