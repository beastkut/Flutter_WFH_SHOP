import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../component/category_item_tile.dart';
import '../models/item.dart';
import 'details_page.dart';

class HeadphonePage extends StatelessWidget {
   HeadphonePage({super.key});

  final List itemList = [
    // headphone
    Item(
        name: "Sony WH1000XM5",
        price: "1499.99",
        imagePath: "lib/images/headphone.png",
        about: 'With two processors controlling eight microphones, Auto NC Optimizer for automatically optimising noise cancelling based on your wearing conditions and environment, and a specially designed driver unit, WH-1000XM5 headphones with industry-leading noise cancelling1 rewrite the rules for distraction-free listening and call clarity.',
        discount: '24%'
    ),

    // mice
    Item(
        name: "Sony WF1000XM5",
        price: "399.99",
        imagePath: "lib/images/earbuds.png",
        about: "An exceptional listening experience that’s tailored just for you. The WF-1000XM4 truly wireless headphones take advanced noise cancelling and audio quality to the next level. Made to fit every ear, they offer a personalised experience that adjusts to every situation.",
        discount: '20%'
    )
  ];
   void navigateToItemDetails(BuildContext context, int index) {
     Navigator.push(
         context,
         MaterialPageRoute(
             builder: (context) => DetailsPage(
               item: itemList[index],
             )));
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Text(
                'All Headphones',
                style: GoogleFonts.sofiaSansSemiCondensed(
                    textStyle: const TextStyle(
                        fontSize: 40, fontWeight: FontWeight.bold)),
              ),
            ),
            Expanded(
                child: GridView.builder(
                    itemCount: itemList.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return CategoryItemTile(
                          item: itemList[index],
                          onTap: () => navigateToItemDetails(context, index));
                    }))
          ],
        ),
      ),
    );
  }
}
