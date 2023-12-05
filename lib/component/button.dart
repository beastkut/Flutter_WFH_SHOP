import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const MyButton({super.key, required this.text,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blue,
        ),

        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Text(
                    text,
                  style: TextStyle(color: Colors.white,fontSize: 17),
                ),

                SizedBox(width: 10,),
                Icon(Icons.arrow_forward_rounded,color: Colors.white,)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
