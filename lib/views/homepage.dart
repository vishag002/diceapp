import 'package:diceapp/views/homescreen.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  List<String> Inkwell = ["Inkwell 1", "Inkwell 2", "Inkwell 3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 30)),
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    )),
                child: Image.asset(
                  "assets/images/red4.png",
                  scale: 2,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
                child: Image.asset(
                  "assets/images/red4.png",
                  scale: 2,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    )),
                child: Image.asset(
                  "assets/images/red4.png",
                  scale: 2,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
