List<int> generator(int count) {
  return List.generate(count, (index) => index);
}

main() {
  print(generator(5));
}
