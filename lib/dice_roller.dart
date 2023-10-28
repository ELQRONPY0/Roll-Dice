import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var diceNumber = 'images/dice_1.png';

  void diceRoll() {
    var randomNumber = Random().nextInt(6) + 1;
    setState(() {
      diceNumber = 'images/dice_$randomNumber.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Column(
            children: [
              Image.asset(
                diceNumber,
                width: 200,
                color: const Color.fromARGB(255, 16, 18, 53),
              ),
              const SizedBox(
                height: 30.0,
              ),
              TextButton.icon(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 22, 83, 133)),
                ),
                onPressed: diceRoll,
                label: const Text('Roll Dice ', style: TextStyle(fontSize: 18)),
                icon: const Icon(Icons.casino),
              )
            ],
          ),
        ),
      ],
    );
  }
}
