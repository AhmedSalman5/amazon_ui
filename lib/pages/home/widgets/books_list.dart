import 'package:amazon_ui/constants.dart';
import 'package:amazon_ui/models/book_model.dart';
import 'package:amazon_ui/pages/book/book_page.dart';
import 'package:flutter/material.dart';


class BuildBookList extends StatelessWidget {
  BuildBookList({Key? key}) : super(key: key);

  final List<BookModel> books = BookModel.books;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black.withOpacity(0.1),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: Constants.kPadding,
                horizontal: Constants.kPadding * 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Best Sellers',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                TextButton(
                  child: const Text('See all'),
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      vertical: 2.0,
                      horizontal: Constants.kPadding,
                    ),
                    backgroundColor: Colors.deepOrange,
                    primary: Colors.white,
                    //maximumSize: const Size(4, 4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                books.length,
                (index) => Padding(
                  padding: EdgeInsets.only(
                    bottom: Constants.kPadding * 2,
                    right: Constants.kPadding,
                    left: index == 0 ? Constants.kPadding : 0,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>  BookPage(
                        book: books[index],
                      ),),);
                    },
                    child: Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 4.0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              books[index].image,
                              height: 180.0,
                              width: 120.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          width: 120.0,
                          child: Text(
                            books[index].title,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          width: 120.0,
                          child: Text(
                            books[index].subTitle,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
