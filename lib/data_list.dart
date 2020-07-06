import 'model.dart';

final List<Book> bookList = [
  Book(
    author: "Jerome Polin",
    photo: "images/mantapu.jpg",
    title: "Mantappu Jiwa",
    rating: 4.8,
    desc:
        '“Jadi ini buku latihan soal matematika ya, Jer?” Bukan! Kata orang, selama masih hidup, manusia akan terus menghadapi masalah demi masalah. Dan itulah yang akan kuceritakan dalam buku ini, yaitu bagaimana aku menghadapi setiap persoalan di dalam hidupku.',
    avatar: "images/jerome.jpg",
  ),
  Book(
    author: "John C Maxwell",
    photo: "images/power.jpg",
    title: "The Power of Your Leadership",
    rating: 4.1,
    desc:
        "John C. Maxwell, #1 New York Times bestselling author, shows you how to shift from success to significance by leading with passion and purpose in a compact new book derived from his previous title, Intentional Living.",
    avatar: "images/john.jpg",
  ),
  Book(
    author: "Eric Schmidt & Jonathan Rosenberg",
    photo: "images/google.jpg",
    title: "How Google Works",
    rating: 4.4,
    avatar: "images/ericandjonjpg.jpg",
    desc:
        "Seasoned Google executives Eric Schmidt and Jonathan Rosenberg provide an insider's guide to Google, from its business history and disruptive corporate strategy to developing a new managment philosophy and creating a corporate culture where innovation and creativity thrive.",
  ),
];

final List<Author> authorList = [
  Author(name: "Philip K. Dick", photo: "images/philip.jpg", totalBooks: 25),
  Author(name: "Richard Matheson", photo: "images/richard.jpg", totalBooks: 18),
  Author(name: "Arthur C. Clarke", photo: "images/arthur.jpg", totalBooks: 23),
  Author(name: "Jerome Polin", photo: "images/jerome.jpg", totalBooks: 1),
];

// final List<String> author = [
//   "Jerome Polin",
//   "John C Maxwell",
//   "Eric Schmidt & Jonathan Rosenberg"
// ];

// final List<String> photo = [
//   "images/mantapu.jpg",
//   "images/power.jpg",
//   "images/google.jpg"
// ];

// final List<String> title = [
//   "Mantappu Jiwa",
//   "The Power of Your Leadership",
//   "How Google Works"
// ];

// List<Book> getList() {
//   List<Book> bookList;
//   for (int i = 0; i < author.length; i++) {
//     bookList.add(Book(author: author[i], photo: photo[i], title: title[i]));
//   }
//   return bookList;
// }
