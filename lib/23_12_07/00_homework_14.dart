//연습문제
// 1) 제목과 출간일이 같으면 같은 책으로 판단한다. 또한 List, Set, Map 등의 컬렉션에 넣어도 동일 객체로 판단한다.
// 2) Book 인스턴스를 담고 있는 컬렉션에 대해 sort() 를 수행하여 출간일이 오래된 순서대로 정렬한다.
// 3)deep copy 를 지원한다

class Book {
  String title;
  DateTime publishDate = DateTime.now();
  String comment;

  Book({
    required this.title,
    required this.publishDate,
    required this.comment,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Book &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          publishDate == other.publishDate;

  @override
  int get hashCode => title.hashCode ^ publishDate.hashCode;


  @override
  String toString() {
    return 'Book{title: $title, publishDate: $publishDate, comment: $comment}';
  }

  Book copyWith({
    String? title,
    DateTime? publishDate,
    String? comment,
  }) {
    return Book(
      title: title ?? this.title,
      publishDate: publishDate ?? this.publishDate,
      comment: comment ?? this.comment,
    );
  }
}

void main() {
  Book a = Book(title: '11', comment: 'aa', publishDate: DateTime.now());
  Book b =
      Book(title: '1', comment: 'abca', publishDate: DateTime(2023, 12, 01));
  Book c =
      Book(title: '1', comment: 'abcdefg', publishDate: DateTime(2023, 12, 01));
  Book d =
      Book(title: '2', comment: 'abcc', publishDate: DateTime(2023, 12, 03));
  Book e =
      Book(title: '3', comment: 'abcc', publishDate: DateTime(2023, 12, 04));
  Book f =
      Book(title: '4', comment: 'abcc', publishDate: DateTime(2023, 12, 05));

  // 1) 제목과 출간일이 같으면 같은 책으로 판단한다. 또한 List, Set, Map 등의 컬렉션에 넣어도 동일 객체로 판단한다.
  print(b == c);

  Set<Book> setBooks = {b, c};
  print(setBooks);

  List<Book> listBooks = [b, c];
  print(listBooks[0] == listBooks[1]);

  Map<Book, Book> mapBooks = {b: b, c: c};
  print(mapBooks[b] == mapBooks[c]);

// 2) Book 인스턴스를 담고 있는 컬렉션에 대해 sort() 를 수행하여 출간일이 오래된 순서대로 정렬한다.
  List<Book> listBooks2 = [f,e,d,c,c,c,c,d,f];
  // toString 이 나을까 아니면 int.parse가 나을까??
  listBooks2.sort((a,b) => a.publishDate.toString().compareTo(b.publishDate.toString()));
  print(listBooks2);

  // 3)deep copy 를 지원한다
  Book dc = c.copyWith();
  print(dc);

}
