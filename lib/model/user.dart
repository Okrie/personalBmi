
import 'package:flutter/material.dart';

class UserData{
  double weight;
  double height;
  double age;
  String gender;
  double calBmi;
  String resultBmi;
  int resultBmiNum;
  List<Color> resultBmiColor = [const Color.fromARGB(255, 144, 210, 0), 
                        const Color.fromARGB(255, 179, 223, 39),
                        const Color.fromARGB(255, 255, 242, 52),
                        const Color.fromARGB(255, 254, 155, 26),
                        const Color.fromARGB(255, 255, 73, 52),
                        ];
  List<String> resultBmiInfo = [
    "😀You are underweight. \nYou need to gain weight through consistent physical activity.",
    "😁Congratulations. \nYou're a normal weight. Please continue to take care of yourself.",
    "🥹You are slightly overweight. \nYou need to do some exercise for your health.",
    "😅Obesity. \nYou need consistent exercise and dietary management. ",
    "🥲Morbidly obese. \nYou need consistent exercise and dietary control. Please take care of your health."
    ];

  UserData(this.weight, this.height, this.age, this.gender, this.calBmi, this.resultBmi, this.resultBmiNum);

}