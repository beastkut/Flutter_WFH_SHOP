import 'package:flutter/material.dart';
import 'package:wfh_shop/pages/headphone_page.dart';
import 'package:wfh_shop/pages/keyboard_page.dart';
import 'package:wfh_shop/pages/mice_page.dart';

class CategoryPagesController extends StatelessWidget {
  final int index;
  const CategoryPagesController({super.key, required this.index});

  @override
  Widget build(BuildContext context) {

    if(index == 0){
      return  MicePage();
    }

    else if(index == 1){
      return KeyboardPage();
    }

    else{
      return HeadphonePage();
    }


  }
}
