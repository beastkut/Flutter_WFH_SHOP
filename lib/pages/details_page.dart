import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/item.dart';

class DetailsPage extends StatelessWidget {
  final Item item;
  const DetailsPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],


      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap:(){
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Icon(Icons.arrow_back,color: Colors.grey.shade600,),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Icon(Icons.bookmark,color: Colors.grey.shade600,),
                  ),
                ],
              ),
            ),

            Container(
              height: MediaQuery.of(context).size.height*0.4,
              width: MediaQuery.of(context).size.width ,
              color: Colors.transparent,

              child: Center(
                child: Image.asset(item.imagePath),
              ),

            ),

            const SizedBox(height: 15,),

            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)
                  ),
                  color: Colors.white,
                ),

                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            item.name,
                            style: GoogleFonts.sofiaSansSemiCondensed(
                              textStyle: const TextStyle(
                                fontSize: 27,
                                fontWeight: FontWeight.bold
                              )
                            ),
                          ),
                          Text(
                            '\$ ${item.price}',
                            style: GoogleFonts.raleway(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue
                            ),
                          )
                        ],
                      ),

                      item.discount == '0'
                          ? const SizedBox()
                          : Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                ' ${item.discount} off!',
                               style: GoogleFonts.raleway(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.yellow[800]
                                ),
                              ),
                              ],
                         ),


                      const SizedBox(height: 10,),

                      Text(
                        'About',
                        style: GoogleFonts.sofiaSansSemiCondensed(
                            textStyle: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            )
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.17,
                        child: SingleChildScrollView(
                          child: Text(
                            item.about,
                            style: GoogleFonts.sofiaSansSemiCondensed(
                                textStyle: TextStyle(
                                    color: Colors.grey[600] ,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold
                                )
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 20,),

                      Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blueAccent,

                        ),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Add to cart ',
                              style: GoogleFonts.albertSans(
                                  textStyle: const TextStyle(
                                      color: Colors.white ,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  )
                              ),
                            ),
                            const Icon(Icons.shopping_bag,color: Colors.white,size: 30,)
                          ],
                        ),
                      )


                    ],
                  ),
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}
