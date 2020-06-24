abstract class Item {
  use();
}

class Chest<T> implements Item {
  List<T> contents;

  Chest(this.contents);

  use() => print("$this has ${contents.length} items.");
}

class Sword implements Item {
  int damage = 5;

  use() => print("$this dealt $damage damage.");
}

class DiamondSword extends Sword {
  int damage = 50;
}

class IronSword extends Sword {
  int quantity = 2;
}

main() {
  var chest = Chest<Item>([
    DiamondSword(),
    Sword(),
  ]);

  chest.use();

  for (var item in chest.contents) {
    item.use();
  }

  var is0 = new IronSword();
  print(is0.quantity);
}
