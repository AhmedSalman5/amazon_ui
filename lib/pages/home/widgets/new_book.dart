import 'package:amazon_ui/constants.dart';
import 'package:amazon_ui/models/book_model.dart';
import 'package:amazon_ui/pages/book/book_page.dart';
import 'package:flutter/material.dart';

class BuildNewBook extends StatelessWidget {
  BuildNewBook({Key? key}) : super(key: key);

  final newBook = BookModel.newBook;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 2 * Constants.kPadding,
            vertical: Constants.kPadding,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hot New Releases',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Icon(Icons.keyboard_arrow_right),
            ],
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>  BookPage(
              book: newBook,
            ),),);
          },
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: Constants.kPadding,
                ),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 4.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      newBook.image,
                      height: 180.0,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 2 * Constants.kPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          newBook.title,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          newBook.subTitle,
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 10,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    TextButton(onPressed: () {}, child: Text(
                      '4.8',
                    ),
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              vertical: 2.0, horizontal: Constants.kPadding),
                        backgroundColor: Colors.deepOrange,
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20,),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
