import 'package:flutter/material.dart';

class evenOddPara extends StatefulWidget {
  const evenOddPara({Key? key}) : super(key: key);

  @override
  State<evenOddPara> createState() => _evenOddParaState();
}

class _evenOddParaState extends State<evenOddPara> {
  final firstNoControllerPara = TextEditingController();
  final secondNoControllerPara = TextEditingController();

  String strResult = "";
  String str1 = "";
  String str2 = "";

  int num1 = 0;
  int num2 = 0;
  int count = 0;

  String evenNumber = "";
  String oddNumber = "";

  even(str1,str2) {
    evenNumber = "";
    count = 0;

    num1 = int.parse(str1);
    num2 = int.parse(str2);

    for (num1 = num1 +1; num1 < num2; num1++) {
      if (num1 % 2 == 0) {
        evenNumber = "$evenNumber $num1 ";
        count++;
      }
    }

    setState(() {
      strResult = "Even no count is $count"  " \tEven numbers are is $evenNumber";
    });
  }

  odd(str1,str2) {

    oddNumber = "";
    count = 0;
    num1 = int.parse(str1);
    num2 = int.parse(str2);

    for (num1 = num1; num1 < num2; num1++) {
      if (num1 % 2 != 0) {
        oddNumber = "$oddNumber $num1";
        count++;
      }
    }

    setState(() {
      strResult = "Odd no count is $count" "\tOdd numbers are is $oddNumber";
    });
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.amber
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [

                const SizedBox(
                  height: 100,
                ),
                const Text("Find Even Odd", style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 25,
                ),
                ),
                const SizedBox(
                  height: 100,
                ),
                TextField(
                  controller: firstNoControllerPara,
                  decoration: const InputDecoration(hintText: "From"),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: secondNoControllerPara,
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
                    strResult,
                    style: const TextStyle(),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            even(firstNoControllerPara.text,secondNoControllerPara.text);
                            // setState(() {
                            //   even();
                            // });
                          },
                          child: const Text("Even")),
                      const Spacer(),
                      ElevatedButton(
                          onPressed: () {
                            //setState(() {
                              odd(firstNoControllerPara.text,secondNoControllerPara.text);
                            //});
                          },
                          child: const Text("Odd")),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}