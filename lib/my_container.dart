import 'package:dice_roll/dice_roller.dart';
import 'package:flutter/material.dart';

class MyContainer extends StatefulWidget {
  const MyContainer({
    super.key,
  });

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromRGBO(200, 228, 178, 1),
            Color.fromRGBO(158, 210, 190, 1),
          ],
        ),
      ),
      child: const DiceRoller(),
    );
  }
}
