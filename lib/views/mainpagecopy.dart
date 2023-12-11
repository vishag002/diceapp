/* import 'package:diceapp/controller/mycontroller.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  MyController diceController = MyController();

  @override
  Widget build(BuildContext context) {
    final diceProvider = Provider.of<MyController>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: diceProvider.isLoading == true
                ? Lottie.asset(
                    "assets/images/Animation - 1701883451325 (1).json")
                : InkWell(
                    onTap: () =>
                        Provider.of<MyController>(context, listen: false)
                            .generate(),
                    child: Image.asset(
                      diceProvider.diceImagesWhite[diceProvider.randomNumber],
                      scale: 2,
                    ),
                  ),
          ),
        ],
      ),
      /* floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Provider.of<MyController>(context, listen: false).generate();
        },
        child: Icon(
          Icons.gps_not_fixed_outlined,
          color: Colors.black,
          size: 40,
        ),
      ), */
    );
  }
} */
