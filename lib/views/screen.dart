import 'package:flutter/material.dart';
import 'package:flutter_spinbox/cupertino.dart';
import 'package:personal_bmi_app/model/user.dart';
import 'package:personal_bmi_app/views/bmidrawer.dart';
import 'package:personal_bmi_app/views/result.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  // Property
  late double weight;
  late double height;
  late double age;
  late String gender;
  late double calBmi;
  late String resultBmi;
  late int resultBmiNum;

  @override
  void initState() {
    super.initState();
    weight = 65.0;
    height = 173.0;
    age = 20;
    gender = 'male';
  }


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
        actions: [
          IconButton(
            onPressed: () {
              _reset();
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      drawer: const BmiDrawer(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text('Weight'),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: CupertinoSpinBox(
                  textAlign: TextAlign.center,
                  min: 10,
                  max: 1000,
                  keyboardAppearance: null,
                  value: weight,
                  decimals: 1,
                  step: 0.5,
                  prefix: const Text('     '),
                  suffix: const Text('kg'),
                  onChanged: (value) {
                    weight = value;
                    setState(() {
                      
                    });
                  },
                ),
              ),
              const Text('Height'),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: CupertinoSpinBox(
                  textAlign: TextAlign.center,
                  min: 10,
                  max: 1000,
                  keyboardAppearance: null,
                  value: height,
                  decimals: 1,
                  step: 0.5,
                  prefix: const Text('     '),
                  suffix: const Text('cm'),
                  onChanged: (value) {
                    height = value;
                    setState(() {
                      
                    });
                  },
                ),
              ),
              const Text('Age'),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: CupertinoSpinBox(
                  textAlign: TextAlign.center,
                  min: 10,
                  max: 1000,
                  keyboardAppearance: null,
                  value: age,
                  decimals: 0,
                  step: 1,
                  prefix: const Text(''),
                  suffix: const Text(''),
                  onChanged: (value) {
                    age = value;
                    setState(() {
                      
                    });
                  },
                ),
              ),
              const Text('Gender'),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        gender = 'male';
                        setState(() {
                          
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(150, 40),
                        backgroundColor: gender.length == 4 ? Colors.blue[200] : Colors.black45,
                        foregroundColor: gender.length == 4 ? Colors.white : Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                        ),
                      ),
                      icon: const Icon(Icons.male),
                      label: const Text('Male'),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        gender = 'female';
                        setState(() {
                          
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(150, 40),
                        backgroundColor: gender.length == 4 ? Colors.black45 : Colors.blue[200],
                        foregroundColor: gender.length == 6 ? Colors.white : Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                        ),
                      ),
                      icon: const Icon(Icons.female),
                      label: const Text('Female'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {
                    _calBmi();
                    final UserData userData = UserData(weight, height, age, gender, calBmi, resultBmi, resultBmiNum);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Result(userData),
                    ));
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(370, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                    backgroundColor: const Color.fromARGB(255, 76, 175, 80),
                    foregroundColor: Colors.white
                  ),
                  child: const Text('Calculate'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _reset(){
    weight = 65.0;
    height = 173.0;
    age = 20;
    gender = 'male';
    setState(() {
      
    });
  }

  _calBmi(){
    calBmi = weight / ((height/100) * (height/100));
    if(calBmi >= 30){
      resultBmi = 'Extremely Obese';
      resultBmiNum = 4;
    }else if(calBmi >= 25){
      resultBmi = 'Obese';
      resultBmiNum = 3;
    }else if(calBmi >= 23){
      resultBmi = 'OverWeight';
      resultBmiNum = 2;
    }else if(calBmi >= 18.5){
      resultBmi = 'Normal';
      resultBmiNum = 1;
    }else{
      resultBmi = 'UnderWeight';
      resultBmiNum = 0;
    }
  }
}
