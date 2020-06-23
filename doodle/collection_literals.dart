var lostNumbers = [4, 8, 15];

var nobleGases = {
  'He': 'Helium',
  'Ne': 'Neon',
  'Ar': 'Argon',
};

var frogs = {
  'Tree',
  'Poison dart',
  'Glass',
};

void main() {
  print(lostNumbers);
  print(nobleGases['Ne']);
  
  print(frogs);

  var frog = {'Poison dart'};
  print(frogs.difference(frog));
}


