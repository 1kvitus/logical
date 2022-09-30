import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DivisibelByFive extends StatefulWidget {
  const DivisibelByFive({Key? key}) : super(key: key);

  @override
  State<DivisibelByFive> createState() => _DivisibelByFiveState();
}

class _DivisibelByFiveState extends State<DivisibelByFive> {
//  final itemValue = [1,2,3,4,5,6,7,8,9];

  final firstController = TextEditingController();
  final secondController = TextEditingController();

  var value = "";
  var result = "";
  int count = 0;

  var str1 = "";
  var str2 = "";

  int num1 = 0;
  int num2 = 0;

  five(str1, str2) {
    value = "";
    count = 0;

    num1 = int.parse(str1);
    num2 = int.parse(str2);

    for (num1 = num1; num1 < num2; num1++) {
      if (num1 % 5 == 0) {
        value = "$value $num1";
        count++;
      }
    }
    setState(() {
      result = "Total Numbers Divisible by 5 are  $count"
          "\tand Numbers are $value ";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(color: Colors.amber),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                const Text(
                  "Find Even Odd",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                TextField(
                  controller: firstController,
                  decoration: const InputDecoration(hintText: "From"),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: secondController,
                  decoration: const InputDecoration(hintText: "To"),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 100,
                  width: 300,
                  child: Text(
                    "$result",
                    style: const TextStyle(),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                    onPressed: () {
                      five(firstController.text, secondController.text);
                    },
                    child: const Text("Divisible 5")),
                // NumberPicker(minValue: 1, maxValue: 10, value: 1, onChanged: (value)async{
                //  setState((){
                //    if(value == 5) {
                //      five(firstController.text, secondController.text);
                //    }
                //  });
                // })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
