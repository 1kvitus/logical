import 'package:flutter/material.dart';

class CalPara extends StatefulWidget {
  const CalPara({Key? key}) : super(key: key);

  @override
  State<CalPara> createState() => _CalParaState();
}

class _CalParaState extends State<CalPara> {
  final firstNoControllerPara = TextEditingController();
  final secondNoControllerPara = TextEditingController();
  final thirdNoControllerPara = TextEditingController();

  String count = "";

  String strNum1 = "";
  String strNum2 = "";
  String strNum3 = "";

  int num1 = 0;
  int num2 = 0;
  int num3 = 0;

  greater(strNum1,strNum2,strNum3) {

    num1 = int.parse(strNum1);
    num2 = int.parse(strNum2);
    num3 = int.parse(strNum3);

    if (num1 > num2 && num1 > num3) {
      return count = firstNoControllerPara.text;
    } else if (num2 > num1 && num2 > num3) {
      return count = secondNoControllerPara.text;
    } else if (num3 > num1 && num3 > num2) {
      return count = thirdNoControllerPara.text;
    }
  }

  smaller(strNum1,strNum2,strNum3) {

    num1 = int.parse(strNum1);
    num2 = int.parse(strNum2);
    num3 = int.parse(strNum3);

    if (num1 < num2 && num1 < num3) {
      return count = firstNoControllerPara.text;
    } else if (num2 < num1 && num2 < num3) {
      return count = secondNoControllerPara.text;
    } else if (num3 < num1 && num3 < num2) {
      return count = thirdNoControllerPara.text;
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
                  controller: firstNoControllerPara,
                  keyboardType: TextInputType.number,
                ),

                SizedBox(
                  height: 40,
                ),

                TextField(
                  controller: secondNoControllerPara,
                  keyboardType: TextInputType.number,
                ),

                SizedBox(
                  height: 40,
                ),

                TextField(
                  controller: thirdNoControllerPara,
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
                            greater(firstNoControllerPara.text,
                                secondNoControllerPara.text, thirdNoControllerPara.text);
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
                            smaller(firstNoControllerPara.text,
                                secondNoControllerPara.text, thirdNoControllerPara.text);
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
