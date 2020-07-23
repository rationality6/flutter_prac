class Cat {
  String name;
  int age;

  Cat({this.name, this.age});

  @override
  String toString() {
    return '${this.name}, ${this.age}';
  }
}

main() {
  List<Cat> customers = [];
  customers.add(Cat(name: '후밍', age: 33));
  customers.add(Cat(name: '미유', age: 31));
  customers.add(Cat(name: '까미', age: 30));

  for (var cat in customers) {
    print(cat);
  }
}
