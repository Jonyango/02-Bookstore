import 'package:bookstore/utils/items.dart';
import 'package:flutter/cupertino.dart';

class Store extends ChangeNotifier {
  List<Book> _books = bookList;
  List<Author> _authors = authorList;

  Book _chosenBook = Book();

  //? getters
  get books => _books;
  get authors => _authors;
  get book => _chosenBook;
}
