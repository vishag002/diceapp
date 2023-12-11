import 'package:diceapp/controller/mycontroller.dart';
import 'package:diceapp/views/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  List<String> Inkwell = ["Inkwell 1", "Inkwell 2", "Inkwell 3"];

  @override
  Widget build(BuildContext context) {
    final myProvider = Provider.of<MyController>(context);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 600)),
          InkWell(
            onTap: () {
              Provider.of<MyController>(context, listen: false)
                  .onDiceColorSelection(myProvider.diceImagesWhite);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
            },
            child: Image.asset(
              "assets/images/whitedice.png",
              scale: 2,
              height: 300,
            ),
          ),
          /* SizedBox(
            width: 20,
          ), */
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
              "assets/images/blackdice.jpg",
              scale: 2,
              height: 250,
              width: 300,
            ),
          ),
          /* SizedBox(
            height: 30,
          ), */
          InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                )),
            child: Image.asset(
              "assets/images/reddice.jpg",
              scale: 2,
              height: 250,
            ),
          )
        ],
      ),
    );
  }
}
