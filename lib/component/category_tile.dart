import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/category.dart';

class CategoryTile extends StatelessWidget {
  final Catergory catergory;
  const CategoryTile({super.key, required this.catergory});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 8),
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[100],
        ),


        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 20),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[300],
                    ),

                    child: Center(
                      child: Image.asset(catergory.imagePath, height: 40, color: Colors.grey[800],),
                    ),

                  ),
                ),
                
                 Text(
                     catergory.name,
                    style: GoogleFonts.robotoMono(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87
                    ),
                 )
              ],
            )
          ],
        ),
      ),
    );
  }
}
