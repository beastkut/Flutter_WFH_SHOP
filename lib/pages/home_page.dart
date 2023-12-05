import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wfh_shop/component/category_tile.dart';
import 'package:wfh_shop/component/item_tile.dart';
import 'package:wfh_shop/models/category.dart';
import 'package:wfh_shop/models/item.dart';
import 'package:wfh_shop/pages/details_page.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  //Item List
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
  final List categoryList=[
    Catergory(
        imagePath: "lib/images/mouse.png",
        name: 'Mice'
    ),

    Catergory(
        imagePath: "lib/images/keyboard.png",
        name: 'Keyboards'
    ),

    Catergory(
        imagePath: "lib/images/headphoneic.png",
        name: 'Headphones'
    ),
  ];

  // navigate to item details page
   void navigateToItemDetails(BuildContext context,int index){
     Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailsPage(item: itemList[index],)));
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      resizeToAvoidBottomInset: false,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Icon(Icons.menu,color: Colors.grey.shade600,),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Icon(Icons.shopping_bag,color: Colors.grey.shade600,),
                  ),
                ],
              ),

              const SizedBox(height: 25,),
              Text(
                'Explore Products',
                style: GoogleFonts.sofiaSansSemiCondensed(
                    textStyle: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold
                    )
                ),

              ),


              //search bar
             Padding(
               padding: const EdgeInsets.only(right: 80.0,top: 20),
               child: TextField(
                 decoration: InputDecoration(
                   prefixIcon: const Icon(Icons.search_rounded),
                   border: OutlineInputBorder(
                     borderSide: const BorderSide(color: Colors.white),
                     borderRadius: BorderRadius.circular(20)
                   ),
                   focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.grey.shade600),
                       borderRadius: BorderRadius.circular(20)
                   ),
                 ),
               ),
             ),

              const SizedBox(height: 15,),

              Text(
                'Categories',
                style: GoogleFonts.sofiaSansSemiCondensed(
                    textStyle: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                    )
                ),

              ),
              SizedBox(
                height: 140,
                width: double.infinity,

                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoryList.length,
                  itemBuilder: (context,index) => CategoryTile(
                      catergory: categoryList[index]
                  ),
                ),
              ),


              const SizedBox(height: 25,),


              Row(
                children: [
                  Text(
                    'On discount',
                    style: GoogleFonts.sofiaSansSemiCondensed(
                        textStyle: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold
                        )
                    ),

                  ),

                  const SizedBox(width: 5,),
                  Image.asset('lib/images/fire.png', height: 20,)
                ],
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height*0.33,
                  width: MediaQuery.of(context).size.height* 0.5,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: itemList.length,
                      itemBuilder: (context,index) => ItemTile(
                          item: itemList[index],
                          onTap: ( )=> navigateToItemDetails(context, index) ,
                      )
                  )
              ),


            ],
          ),
        ),
      ),
    );
  }
}
