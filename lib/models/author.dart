class Author {
  String name;
  int bookCounts;
  String authorPics;

  Author({this.name, this.bookCounts, this.authorPics});
}

List<Author> authorsList = [
  Author(
      name: 'Philip K. Dick',
      bookCounts: 25,
      authorPics: 'assets/images/philip.jpg'),
  Author(
      name: 'Richard Matheson',
      bookCounts: 25,
      authorPics: 'assets/images/richard.jpg'),
  Author(
      name: 'Arthur C. Clarke',
      bookCounts: 25,
      authorPics: 'assets/images/arthur.png'),
];
