import 'package:flutter/material.dart';

import 'dice_roller.dart';

class GradientContainer extends StatelessWidget{
  const GradientContainer(this.color1, this.color2, {super.key});     // First Constructor

  const GradientContainer.purple({super.key})                         // Alternative constructor
    : color1 =  const Color.fromARGB(255, 150, 25, 173),
      color2 =  const Color.fromARGB(255, 175, 107, 239);

  final Color color1;
  final Color color2;
  // var ram;               agar ye variable hota to constructor k pehle const nahi lage sakte the

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color.fromARGB(255, 150, 25, 173),Color.fromARGB(255, 175, 107, 239),],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const DiceRoller(),
      // child: Center(
      //   child: Column(
      //     mainAxisSize: MainAxisSize.min,
      //     children: [
      //       Image(
      //         // image: AssetImage('assets/images/dice-1.png'),
      //         image : AssetImage(activeDice),
      //         width: 200,
      //       ),
      //       const SizedBox(height: 20,),
      //       TextButton(
      //         onPressed: rollDice,
      //         style: TextButton.styleFrom(
      //           foregroundColor: Colors.white,
      //           textStyle: const TextStyle(
      //             fontSize: 28
      //           )
      //         ), 
      //         child: const Text("Roll Dice")
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}