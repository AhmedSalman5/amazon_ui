class BookModel {
  String image;
  String secondImage;
  String title;
  String subTitle;
  bool favorite;

  BookModel({
    required this.image,
    required this.secondImage,
    required this.title,
    required this.subTitle,
    required this.favorite,
  });


  static BookModel newBook = BookModel(
      image: 'assets/images/new_book_1.jpeg',
      secondImage: 'assets/images/new_book_2.jpeg',
      title: 'Raft Of Stars',
      subTitle: 'Andrew J. Graff',
      favorite: true,
  );


  static List<BookModel>books = [
    BookModel(
      image: 'assets/images/book_1.jpeg',
      secondImage: 'assets/images/book_1.jpeg',
      title: 'The Martian',
      subTitle: 'Andy Weir',
      favorite: false,
    ),
    BookModel(
      image: 'assets/images/book_2.jpeg',
      secondImage: 'assets/images/book_2.jpeg',
      title: 'Midnight war',
      subTitle: 'Mateo Martinez',
      favorite: false,
    ),
    BookModel(
      image: 'assets/images/book_3.jpeg',
      secondImage: 'assets/images/book_3.jpeg',
      title: 'The Hypocrite World',
      subTitle: 'Sophia Hill',
      favorite: false,
    ),
    BookModel(
      image: 'assets/images/book_4.jpeg',
      secondImage: 'assets/images/book_4.jpeg',
      title: 'Amara The Brave',
      subTitle: 'Matt Zhang',
      favorite: false,
    ),
    BookModel(
      image: 'assets/images/book_5.jpeg',
      secondImage: 'assets/images/book_5.jpeg',
      title: 'Harry Potter',
      subTitle: 'A History Of Magic',
      favorite: false,
    ),
  ];
}