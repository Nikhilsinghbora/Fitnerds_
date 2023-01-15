import 'package:Fitnerds/Pages/Details/name.dart';
import 'package:Fitnerds/widgets/reusablewigi.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 230,
                color: Colors.red,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/hh.png',
                          height: 40,
                          fit: BoxFit.fitWidth,
                          color: Colors.white,
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.all(8.0),
                        //   child: Column(
                        //     crossAxisAlignment: CrossAxisAlignment.start,
                        //     children: const [
                        //       Text(
                        //         'ITS TIME TO',
                        //         style: TextStyle(
                        //             color: Colors.white,
                        //             fontSize: 10,
                        //             fontWeight: FontWeight.bold),
                        //       ),
                        //       Text(
                        //         'Healthify Me',
                        //         style: TextStyle(
                        //             color: Colors.white,
                        //             fontSize: 20,
                        //             fontWeight: FontWeight.bold),
                        //       )
                        //     ],
                        //   ),
                        // )
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const Text(
                      'What brings you to Fitnerds?',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      setState(() {
                        value = !value;
                      });
                      if (value = true) {
                        Border.all(color: Colors.green);
                      }
                    },
                    child: reusableCategory(
                        'assets/images/coach.png', value, 'COACH GUIDANCE'),
                  )),
                  Expanded(
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              value = !value;
                            });
                          },
                          child: reusableCategory(
                              'assets/images/bdiet.png', value, 'DIET PLAN'))),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: reusableCategory(
                          'assets/images/wl.png', value, 'WEIGHT LOSS')),
                  Expanded(
                      child: reusableCategory(
                          'assets/images/wg.png', value, 'WEIGHT GAIN')),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: reusableCategory('assets/images/calculator.png',
                          value, 'COUNT CALORIES')),
                  Expanded(
                      child: reusableCategory(
                          'assets/images/muscle.png', value, 'MUSCLE GAIN'))
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: reusableCategory(
                          'assets/images/exercise.png', value, 'HOME WORKOUT')),
                  Expanded(
                    child: Container(
                      height: 105,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Visibility(
                      visible: value,
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => NamePage()));
                          },
                          child: reusablebottomButton('PROCEED')))),
            ],
          ),
        ),
      ),
    );
  }

  Widget reusableCategory(String imageadd, bool isChecked, String text) {
    return Container(
      height: 105,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 0,
              blurRadius: 5,
              offset: const Offset(0, .2),
            ),
          ]),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 12, left: 45),
                child: Image.asset(
                  imageadd,
                  height: 50,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 2, top: 1),
                child: Checkbox(
                  activeColor: Colors.green,
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      this.value = value!;
                    });
                  },
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            child: Text(
              text,
              style: const TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                  fontSize: 13),
            ),
          )
        ],
      ),
    );
  }
}
