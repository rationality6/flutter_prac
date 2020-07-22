void printInteger(int aNumber) {
  print('The number is $aNumber.');
}

String returnInterpolationString(int aNumber) {
  return 'The number is $aNumber.';
}

void doodle0() {
  const List<int> array_numbers0 = [1, 2, 3];

  var foo = const [];
  const Object i = '9';
  // const List<int> list = [i as int];
  // print(list);

  const map0 = {if (i is int) i: "int"};
  print(map0);
}

void doodle1() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  var elements = <String>{};
  elements.add('fluorine0');
  elements.addAll(halogens);
  print(elements);
}

void doodleMap() {
  var gifts = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  print(gifts['first']);
  print(gifts['first']);
  print(gifts['second']);
  print(gifts['fifth']);
}

void doodleMapFor() {
  const gifts = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  gifts.forEach((k, v) => print('${k} , ${v}'));
}

main() {
  // doodle0();
  // doodle1();
  // doodleMap();
  doodleMapFor();
}
