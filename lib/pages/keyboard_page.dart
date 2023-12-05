import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wfh_shop/component/category_item_tile.dart';
import 'package:wfh_shop/models/item.dart';

import 'details_page.dart';

class KeyboardPage extends StatelessWidget {
  KeyboardPage({super.key});

  final List keyboardList = [
    Item(
        name: 'Logitech G715',
        price: '199.99',
        imagePath: 'lib/images/g715.png',
        about:
            'From the Aurora Collection, G715 is a gaming-grade LIGHTSPEED wireless and Bluetooth® keyboard designed for comfort with included cloud-soft palm rest. Fully equipped with RGB lighting and your choice of GX mechanical switches. Comes in White Mist. Colorway accessories sold separately.',
        discount: '0'),
    Item(
        name: 'Logitech G915 TKL',
        price: '159.99',
        imagePath: 'lib/images/g915.png',
        about: 'A breakthrough in design and engineering. LIGHTSPEED pro-grade wireless, advanced LIGHTSYNC RGB, and your choice in pro-grade low-profile mechanical switches. Fully equipped with programmable G-keys.',
        discount: '0')
  ];

  void navigateToItemDetails(BuildContext context, int index) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => DetailsPage(
                  item: keyboardList[index],
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
                'All Keyboards',
                style: GoogleFonts.sofiaSansSemiCondensed(
                    textStyle: const TextStyle(
                        fontSize: 40, fontWeight: FontWeight.bold)),
              ),
            ),
            Expanded(
                child: GridView.builder(
                    itemCount: keyboardList.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return CategoryItemTile(
                          item: keyboardList[index],
                          onTap: () => navigateToItemDetails(context, index));
                    }))
          ],
        ),
      ),
    );
  }
}
