bool isEven(int x) {
  if (x % 2 == 0) {
    return true;
  } else {
    return false;
  }
}

List<int> getEvenNumbers(Iterable<int> numbers) {
  var evenNumbers = <int>[];

  for (var i in numbers) {
    if (isEven(i)) evenNumbers.add(i);
  }

  return evenNumbers;
}

void main() {
  for (var i = 1; i < 7; i += 1) {
    var result = print('$i ${isEven(i)}');
  }

  var numbers = List.generate(10, (i) => i);
  print(getEvenNumbers(numbers));

  print(lostNumbers);
}

var lostNumbers = [4, 8, 15];

var nobelGases = {
  'He':'Helium',
  'Ne':'Neon'
};