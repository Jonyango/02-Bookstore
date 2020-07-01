import 'author.dart';
import 'dart:math';

class Book {
  Book({this.title, this.image, this.author, this.description, this.rating});

  String title;
  String image;
  Author author;
  String description;
  double rating;
}

List<Book> bookLists = [
  Book(
      title: 'Think Outside the Box',
      image: 'assets/images/book.png',
      author: authorsList[Random().nextInt(3)],
      description: 'Lorem Ipsum dolor jfkdf jieofsdkfjoajf djfafjjajf'
          'difjpaf ajfkjap fjappjsdifa jjdkfsjlfkdjslfsdk'
          'f jdsklfjdsfkslfjsljfakdjfafjsdjfsalfjsd;akfj'
          'dkfjlsfja jfklajskjadfjdjfjfwofkdjfdsjfafjdslfjeie'
          'djfsljalkdjfsljfjeif jfisdlfjadfjadf',
      rating: 4.9),
  Book(
      title: 'John\'s Journal of Lies',
      image: 'assets/images/book1.png',
      author: authorsList[Random().nextInt(3)],
      description: 'Lorem Ipsum dolor jfkdf jieofsdkfjoajf djfafjjajf'
          'difjpaf ajfkjap fjappjsdifa jjdkfsjlfkdjslfsdk'
          'f jdsklfjdsfkslfjsljfakdjfafjsdjfsalfjsd;akfj'
          'dkfjlsfja jfklajskjadfjdjfjfwofkdjfdsjfafjdslfjeie'
          'djfsljalkdjfsljfjeif jfisdlfjadfjadf',
      rating: 4.0),
  Book(
      title: 'The Jazz Singer',
      image: 'assets/images/book2.png',
      author: authorsList[Random().nextInt(3)],
      description: 'Lorem Ipsum dolor jfkdf jieofsdkfjoajf djfafjjajf'
          'difjpaf ajfkjap fjappjsdifa jjdkfsjlfkdjslfsdk'
          'f jdsklfjdsfkslfjsljfakdjfafjsdjfsalfjsd;akfj'
          'dkfjlsfja jfklajskjadfjdjfjfwofkdjfdsjfafjdslfjeie'
          'djfsljalkdjfsljfjeif jfisdlfjadfjadf',
      rating: 3.9),
  Book(
      title: 'The Three Month Rule',
      image: 'assets/images/book3.png',
      author: authorsList[Random().nextInt(3)],
      description: 'Lorem Ipsum dolor jfkdf jieofsdkfjoajf djfafjjajf'
          'difjpaf ajfkjap fjappjsdifa jjdkfsjlfkdjslfsdk'
          'f jdsklfjdsfkslfjsljfakdjfafjsdjfsalfjsd;akfj'
          'dkfjlsfja jfklajskjadfjdjfjfwofkdjfdsjfafjdslfjeie'
          'djfsljalkdjfsljfjeif jfisdlfjadfjadf',
      rating: 4.7),
  Book(
      title: 'Go and Kick *ss',
      image: 'assets/images/book4.png',
      author: authorsList[Random().nextInt(3)],
      description: 'Lorem Ipsum dolor jfkdf jieofsdkfjoajf djfafjjajf'
          'difjpaf ajfkjap fjappjsdifa jjdkfsjlfkdjslfsdk'
          'f jdsklfjdsfkslfjsljfakdjfafjsdjfsalfjsd;akfj'
          'dkfjlsfja jfklajskjadfjdjfjfwofkdjfdsjfafjdslfjeie'
          'djfsljalkdjfsljfjeif jfisdlfjadfjadf',
      rating: 4.1),
  Book(
      title: 'Amara the Brave',
      image: 'assets/images/book5.png',
      author: authorsList[Random().nextInt(3)],
      description: 'Lorem Ipsum dolor jfkdf jieofsdkfjoajf djfafjjajf'
          'difjpaf ajfkjap fjappjsdifa jjdkfsjlfkdjslfsdk'
          'f jdsklfjdsfkslfjsljfakdjfafjsdjfsalfjsd;akfj'
          'dkfjlsfja jfklajskjadfjdjfjfwofkdjfdsjfafjdslfjeie'
          'djfsljalkdjfsljfjeif jfisdlfjadfjadf',
      rating: 4.0),
  Book(
      title: 'Typography for Amateur Book Designers',
      image: 'assets/images/book6.png',
      author: authorsList[Random().nextInt(3)],
      description: 'Lorem Ipsum dolor jfkdf jieofsdkfjoajf djfafjjajf'
          'difjpaf ajfkjap fjappjsdifa jjdkfsjlfkdjslfsdk'
          'f jdsklfjdsfkslfjsljfakdjfafjsdjfsalfjsd;akfj'
          'dkfjlsfja jfklajskjadfjdjfjfwofkdjfdsjfafjdslfjeie'
          'djfsljalkdjfsljfjeif jfisdlfjadfjadf',
      rating: 4.2),
  Book(
      title: 'The Twilight of the Fifth Cloud',
      image: 'assets/images/book7.png',
      author: authorsList[Random().nextInt(3)],
      description: 'Lorem Ipsum dolor jfkdf jieofsdkfjoajf djfafjjajf'
          'difjpaf ajfkjap fjappjsdifa jjdkfsjlfkdjslfsdk'
          'f jdsklfjdsfkslfjsljfakdjfafjsdjfsalfjsd;akfj'
          'dkfjlsfja jfklajskjadfjdjfjfwofkdjfdsjfafjdslfjeie'
          'djfsljalkdjfsljfjeif jfisdlfjadfjadf',
      rating: 4.3),
];
