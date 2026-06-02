import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  bool isClicked =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     /* appBar: AppBar(
        title: const Center(
          child: Text(
            "HOME",
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),*/
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
             Container(
                  height: 100,
                  width: 100,
                  color: Color(0xFFF03D3D),
                ),
               Container(

                 height: 100,
                 width: 100,
                 color: Color(0xFF56c449),
               ),
               Container(

                 height: 100,
                 width: 100,
                 color: Color(0xFF4596ed),
               ),
             ],
          ),
          SizedBox(height: 30),
          Stack(
          alignment: Alignment.center,
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 577),
                curve: Curves.linearToEaseOut,
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(isClicked ? 41: 100),
                ),
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 777),
                curve: Curves.linearToEaseOut,
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Color(0xFFA8B09B),
                  borderRadius: BorderRadius.circular(isClicked ? 41 :100),
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(
                          () {
                    isClicked = !isClicked;
                  }
                  );
                  },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 977),
                  curve: Curves.linearToEaseOut,
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(isClicked ? 41 :100),

                  ),
                ),
              ),
            ],

          )
        ],
        )

    );
  }
}



