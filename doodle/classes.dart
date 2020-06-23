abstract class Item {
  use()
}

class Chest<T> implements Item{
  List<T> contents;
}

main(){
  var chest = Chest<Item>([
  ]);
}