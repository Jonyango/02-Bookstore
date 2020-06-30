class Book {
  String name;
  String author;
  String image;
  String category;

  Book({
    this.name = "",
    this.author = "",
    this.image = "",
    this.category = "",
  });
}

class Author {
  String name;
  String image;
  int bookAmount;

  Author({
    this.name = "",
    this.image = "",
    this.bookAmount = 0,
  });
}

List<Book> bookList = [
  Book(
    name: "Amara The Brave",
    author: "Matt Zhang",
    image: "images/amara_the_brave.png",
    category: "Classic",
  ),
  Book(
    name: "Go And Kick Ass",
    author: "Phyllis Schwalger",
    image: "images/go_and_kick_ass.png",
    category: "Classic",
  ),
  Book(
    name: "John's Journal Of Lies",
    author: "Eleanor Fitzgerald",
    image: "images/jjol.png",
    category: "Classic",
  ),
  Book(
    name: "The Jazz Singer",
    author: "Miles David",
    image: "images/the_jazz_singer.png",
    category: "Classic",
  ),
  Book(
    name: "The Three Month Rule",
    author: "Lorna Alvarado",
    image: "images/the_three_month_rule.png",
    category: "Classic",
  ),
  Book(
    name: "Think Outside The Box",
    author: "Amelia Pond",
    image: "images/think_outside_the_box.png",
    category: "Classic",
  ),
  Book(
    name: "The Twilight Of The Fifth Cloud",
    author: "David King",
    image: "images/twilight.png",
    category: "Classic",
  ),
  Book(
    name: "Typography For Amateur Book Designers",
    author: "Michelle Anderson",
    image: "images/typography.png",
    category: "Classic",
  ),
];

List<Author> authorList = [
  Author(
    name: "Philip K. Dick",
    image: "images/philip.jpg",
    bookAmount: 25,
  ),
  Author(
    name: "Richard Matheson",
    image: "images/richard.jpg",
    bookAmount: 15,
  ),
  Author(
    name: "Arthur C. Clarke",
    image: "images/arthur.jpg",
    bookAmount: 20,
  ),
];
