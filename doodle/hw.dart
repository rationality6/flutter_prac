int timesTwo(int x) {
  return x * 2;
}

int timesFour(int x) => timesTwo(timesTwo(x));

int runTwice(int x, Function f) {
  for (var i = 0; i < 2; i += 1) {
    x = f(x);
  }

  return x;
}

void main() {
  var resultFour = timesFour(3);
  print("resultFour = $resultFour");
  var resultTwice = runTwice(3, timesTwo);
  print("resultTwice $resultTwice");
}
