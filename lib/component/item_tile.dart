import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/item.dart';


class ItemTile extends StatelessWidget {
  final Item item;
  final void Function()? onTap;
  const ItemTile({super.key,required this.item, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(20),
          ),

          margin: const EdgeInsets.only(left: 25),
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              // image
              Image.asset(
                item.imagePath,
                height: 145,
              ),

              //name
              Text(
                  item.name,
                  style: GoogleFonts.dmSerifDisplay(fontSize: 20),
              ),

              //price
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      '\$ ${item.price}',
                      style: GoogleFonts.raleway(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue
                      ),
                  ),

                  const SizedBox(width: 5,),

                  Text(
                    ' ${item.discount} off!',
                    style: GoogleFonts.raleway(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow[800]
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
