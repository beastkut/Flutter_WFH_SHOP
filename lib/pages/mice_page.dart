import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wfh_shop/component/category_item_tile.dart';
import 'package:wfh_shop/models/item.dart';

import 'details_page.dart';

class MicePage extends StatelessWidget {
   MicePage({super.key});

  final List miceList = [
    Item(
        name: 'Asus ROG Chakram',
        price: '150.00',
        imagePath: 'lib/images/chakram.png',
        about:
            'RGB wireless gaming mouse with Qi charging, programmable joystick, tri-mode connectivity (wired/2.4GHz/Bluetooth), advanced 16000 dpi sensor, screw-less magnetic design, and Aura Sync lighting',
        discount: '0'),
    Item(
        name: 'Logitech G304',
        price: '40.00',
        imagePath: 'lib/images/G304.png',
        about:
            'LIGHTSPEED wireless gaming mouse designed for serious performance with latest technology innovations. Impressive 250-hour battery life. Now in a variety of vibrant colors.',
        discount: '0'),
    Item(
        name: 'Corsair Katar Pro',
        price: '50.00',
        imagePath: 'lib/images/katar_pro.png',
        about:
            'Experience lightweight design and heavy-weight performance with the CORSAIR KATAR PRO Ultra-Light Gaming Mouse, weighing in at just 69g with a compact symmetric shape and a precision 12,400 DPI optical sensor.',
        discount: '0'),
    Item(
        name: 'Pulsar X2 Mini',
        price: '95.00',
        imagePath: 'lib/images/pulsar.png',
        about:
            'Ultralight weight below 60grams without the perforation. Equipped with the latest flagship 26K sensor. Lag-free 2.4Hz wireless technology. Shape that is delightfully comfortable.',
        discount: '0'),
    Item(
        name: 'Logitech SuperLight',
        price: '149.99',
        imagePath: 'lib/images/Superlight.png',
        about: 'Less than 63 grams. Advanced low-latency LIGHTSPEED wireless. Sub-micron precision with HERO 25K sensor. Remove all obstacles with our lightest and fastest PRO mouse ever.',
        discount: '0')
  ];

   void navigateToItemDetails(BuildContext context,int index){
     Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailsPage(item: miceList[index],)));
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
              child: Text(
                'All Mice',
                style: GoogleFonts.sofiaSansSemiCondensed(
                    textStyle: const TextStyle(
                        fontSize: 40, fontWeight: FontWeight.bold)),
              ),
            ),

            Expanded(
                child: GridView.builder(
                    itemCount: miceList.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    itemBuilder: (context,index){
                      return CategoryItemTile(item: miceList[index], onTap: () => navigateToItemDetails(context, index));
                    })
            )
          ],
        ),
      ),
    );
  }
}
