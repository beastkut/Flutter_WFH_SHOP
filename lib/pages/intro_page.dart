import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wfh_shop/component/button.dart';


class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],


      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                  'WFH SHOP',
                style: GoogleFonts.openSans(
                  textStyle:TextStyle(
                    color: Colors.grey[500],
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2
                  )
                )
              ),



              Text(
                  'Everything you need for your home office',
                style: GoogleFonts.sofiaSansSemiCondensed(
                  textStyle: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold
                  )
                ),

              ),



              Text(
                  'Improve your work from home experience with our vast selection of amazing tools to help you work like a professional',
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 20,
                    wordSpacing: 2
                  )
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25.0,horizontal: 80),
                child: MyButton(
                  text: 'Explore',
                  onTap: (){
                   //go to main page
                    Navigator.pushNamed(context, '/homepage');
                  }),
              ),

              Center(child: Image.asset('lib/images/worker.png', height: 350,))
            ],
          ),
        ),
      ),
    );
  }
}
