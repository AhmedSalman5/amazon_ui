import 'package:amazon_ui/constants.dart';
import 'package:flutter/material.dart';

class BuildFAB extends StatelessWidget {
  const BuildFAB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 40.0,
                  ),
                  const Text(
                    'Shop by',
                    style: TextStyle(color: Colors.black54),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Category',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.deepOrange,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: Constants.kPadding,
                  ),
                  buildCategory(category: 'Books', iconData: Icons.book, color: Colors.blue ),
                  buildCategory(category: 'Video Games', iconData: Icons.sports_esports, color: Colors.deepOrange ),
                  buildCategory(category: 'Music & Movies', iconData: Icons.movie, color: Colors.blue ),
                  buildCategory(category: 'Grocery', iconData: Icons.local_grocery_store, color: Colors.cyan ),
                  buildCategory(category: 'Health & Beauty', iconData: Icons.healing, color: Colors.yellow.shade700 ),
                  buildCategory(category: 'Sports', iconData: Icons.sports_baseball_rounded, color: Colors.red ),
                  const SizedBox(
                    height: 40.0,
                  ),
                ],
              ),
            ),
          ),
        );
      },
      backgroundColor: Colors.white,
      child: const Icon(
        Icons.list_alt_rounded,
        color: Colors.blue,
      ),
    );
  }


  Widget buildCategory({
    required String category,
    required IconData iconData,
    required Color color,
}){
   return Padding(padding: const EdgeInsets.symmetric(
     vertical: Constants.kPadding,
   ),
     child: InkWell(
       onTap: (){},
       borderRadius: BorderRadius.circular(25.0),
       child: SizedBox(
         width: double.infinity,
         child: Wrap(
           crossAxisAlignment: WrapCrossAlignment.center,
           spacing: 2*Constants.kPadding,
           children: [
             CircleAvatar(
               backgroundColor: color,
               child: Icon(
                 iconData,color: Colors.white,
               ),
             ),
             Text(category,style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 20,),),
           ],
         ),
       ),
     ),
   );
  }
  
  
}
