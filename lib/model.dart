class Author {
  String photo, name;
  int totalBooks;
  Author({this.name, this.photo, this.totalBooks});
}

class Book {
  String photo, title, author, desc, avatar;
  double rating;
  Book(
      {this.photo,
      this.title,
      this.author,
      this.avatar,
      this.desc,
      this.rating});
}
