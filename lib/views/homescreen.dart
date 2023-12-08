import 'package:diceapp/controller/mycontroller.dart';
import 'package:flutter/material.dart';
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
            child: InkWell(
              onTap: () =>
                  Provider.of<MyController>(context, listen: false).generate(),
              child: Image.asset(
                diceProvider.dicesImages[diceProvider.randomNumber],
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
}
