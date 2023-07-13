import 'package:flutter/material.dart';
import 'package:personal_bmi_app/model/user.dart';

class Result extends StatelessWidget {
  final UserData userData;
  const Result(this.userData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI Calculator',
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.asset('images/bmi.png'),
            ),
            Text(
              'Your BMI : ${userData.resultBmi}',
              style: const TextStyle(fontSize: 19),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20, top: 10),
                  child: CircleAvatar(
                    backgroundColor:
                        userData.resultBmiColor[userData.resultBmiNum],
                    radius: 15,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    userData.calBmi.toStringAsFixed(1),
                    style: const TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              '${userData.weight} kg | ${userData.height} cm | ${userData.gender} | Age ${userData.age.toStringAsFixed(0)}',
              style: const TextStyle(
                fontSize: 13,
                color: Colors.black54,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Container(
                  height: 40,
                  color: userData.resultBmiNum == 0
                      ? userData.resultBmiColor[0]
                      : Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: userData.resultBmiNum == 0
                              ? Colors.white
                              : userData.resultBmiColor[0],
                          radius: 10,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          'UnderWeight',
                          style: TextStyle(
                            color: userData.resultBmiNum == 0
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  color: userData.resultBmiNum == 1
                      ? userData.resultBmiColor[1]
                      : Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: userData.resultBmiNum == 1
                              ? Colors.white
                              : userData.resultBmiColor[1],
                          radius: 10,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Normal',
                          style: TextStyle(
                            color: userData.resultBmiNum == 1
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  color: userData.resultBmiNum == 2
                      ? userData.resultBmiColor[2]
                      : Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: userData.resultBmiNum == 2
                              ? Colors.white
                              : userData.resultBmiColor[2],
                          radius: 10,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          'OverWeight',
                          style: TextStyle(
                            color: userData.resultBmiNum == 2
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  color: userData.resultBmiNum == 3
                      ? userData.resultBmiColor[3]
                      : Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: userData.resultBmiNum == 3
                              ? Colors.white
                              : userData.resultBmiColor[3],
                          radius: 10,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Obese',
                          style: TextStyle(
                            color: userData.resultBmiNum == 3
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  color: userData.resultBmiNum == 4
                      ? userData.resultBmiColor[4]
                      : Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: userData.resultBmiNum == 4
                              ? Colors.white
                              : userData.resultBmiColor[4],
                          radius: 10,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Extremly Obese',
                          style: TextStyle(
                            color: userData.resultBmiNum == 4
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 100,
                    width: 500,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        userData.resultBmiInfo[userData.resultBmiNum],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
