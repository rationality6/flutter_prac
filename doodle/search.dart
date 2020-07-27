import 'dart:math';

class MemoPost {
  final int id;
  final String title;
  final String contents;
  final DateTime time;
  final String imageFileName;

  MemoPost({
    this.id,
    this.title,
    this.contents,
    this.time,
    this.imageFileName,
  });
}

String contents =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has";

List<MemoPost> _memoPosts = [];

void _generateList(int count) {
  for (var i = 0; i < count; i += 1) {
    _memoPosts.add(
      MemoPost(
        id: i,
        title: "메모 ${i}번째",
        contents: contents,
        time: DateTime.now(),
        imageFileName: null,
      ),
    );
  }
}

main() {
  _generateList(5);
  var key = '3';
  print(_memoPosts);
  print(_memoPosts.where((element) =>
      element.title.toLowerCase().contains(key) ||
      element.contents.toLowerCase().contains(key)));
}
