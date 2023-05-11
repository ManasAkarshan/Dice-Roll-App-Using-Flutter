import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {  // <DiceRoller> or use <StatefulWidget>
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
  
  var activeDice = 'assets/images/dice-3.png';

  void rollDice() {
    var diceRoll = Random().nextInt(6)+1;                   // 0 to 5 + 1
    setState((){                                           // setState an important update if change occurs EVERY TIME
      activeDice = 'assets/images/dice-$diceRoll.png';
      }
    );     
  }
  
  @override
  Widget build(context) {
    return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image(
              // image: AssetImage('assets/images/dice-1.png'),
              image : AssetImage(activeDice),
              width: 200,
            ),
            const SizedBox(height: 20,),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28
                ),
                // elevation: 0,
                // backgroundColor: Colors.green,
              ), 
              child: const Text("Roll Dice")
            ),
          ],
        ),
      );
  }
}