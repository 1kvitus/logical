import 'package:flutter/material.dart';

class Calcu extends StatefulWidget {
  const Calcu({Key? key}) : super(key: key);

  @override
  State<Calcu> createState() => _CalcuState();
}

class _CalcuState extends State<Calcu> {
  final firstNoController = TextEditingController();
  final secondNoController = TextEditingController();
  final thirdNoController = TextEditingController();

  String count = "";

  String strNum1 = "";
  String strNum2 = "";
  String strNum3 = "";

  int num1 = 0;
  int num2 = 0;
  int num3 = 0;

  greater() {
    strNum1 = firstNoController.text;
    strNum2 = secondNoController.text;
    strNum3 = thirdNoController.text;

    num1 = int.parse(strNum1);
    num2 = int.parse(strNum2);
    num3 = int.parse(strNum3);

    if (num1 > num2 && num1 > num3) {
      return count = firstNoController.text;
    } else if (num2 > num1 && num2 > num3) {
      return count = secondNoController.text;
    } else if (num3 > num1 && num3 > num2){
      return count = thirdNoController.text;
    }
  }

  smaller() {
    strNum1 = firstNoController.text;
    strNum2 = secondNoController.text;
    strNum3 = thirdNoController.text;

    num1 = int.parse(strNum1);
    num2 = int.parse(strNum2);
    num3 = int.parse(strNum3);

    if (num1 < num2 && num1 < num3 ) {
      return count = firstNoController.text;
    } else if (num2 < num1 && num2 < num3) {
      return count = secondNoController.text;
    } else if (num3 < num1 && num3 < num2){
      return count = thirdNoController.text;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/find,png.webp"), fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.all(100.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  controller: firstNoController,
                  keyboardType: TextInputType.number,
                ),

                SizedBox(
                  height: 40,
                ),

                TextField(
                  controller: secondNoController,
                  keyboardType: TextInputType.number,
                ),

                SizedBox(
                  height: 40,
                ),

                TextField(
                 controller: thirdNoController,
                  keyboardType: TextInputType.number,
                ),

                SizedBox(
                  height: 50,
                ),
                Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        // color: Colors.green,
                        borderRadius: BorderRadius.circular(10.0)),
                    height: 50,
                    width: 100,
                    child: Text(
                      "$count",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    )),
                SizedBox(
                  height: 200,
                ),

                //  Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            greater();
                          });
                        },
                        child: Text(
                          "Greater",
                          style: TextStyle(color: Colors.black),
                        )),
                    Spacer(),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            smaller();
                          });
                        },
                        child: Text(
                          "Smaller",
                          style: TextStyle(color: Colors.black),
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
