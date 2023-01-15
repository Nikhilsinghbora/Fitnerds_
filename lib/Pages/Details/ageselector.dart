import 'package:Fitnerds/Pages/Details/height.dart';
import 'package:Fitnerds/utils/string_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:wheel_chooser/wheel_chooser.dart';

class AgeSelector extends StatefulWidget {
  const AgeSelector({Key? key}) : super(key: key);

  @override
  State<AgeSelector> createState() => _AgeSelectorState();
}

class _AgeSelectorState extends State<AgeSelector> {
  var age = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
              child: const StepProgressIndicator(
                totalSteps: 11,
                currentStep: 4,
                size: 2,
                selectedSize: 3,
                selectedColor: Colors.red,
                unselectedColor: Colors.grey,
                roundedEdges: Radius.circular(15),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                AppString.AGE,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ),
            const Text(
              AppString.DETERMINES,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey),
            ),
            const Text(
              AppString.YEARS,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey),
            ),
            const SizedBox(
              height: 30,
            ),
            wheeler(),
          ],
        ),
      ),
      bottomSheet: Container(
        height: 50,
        // margin: EdgeInsets.symmetric(vertical: 10),
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 0,
            blurRadius: 5,
            offset: const Offset(0, .2),
          ),
        ]),
        child: Row(
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 6.0, right: 4),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                    size: 17,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    child: const Center(
                      child: Text(
                        'BACK',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => HeightPage()));
                  },
                  child: Container(
                    child: const Center(
                      child: Text(
                        'NEXT',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.red,
                    size: 17,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget wheeler() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.arrow_right,
          size: 80,
          color: Colors.red,
        ),
        WheelChooser.integer(
          onValueChanged: (s) => print(s.toString()),
          listWidth: 70,
          maxValue: 100,
          listHeight: 300.0,
          minValue: 1,
          initValue: 19,
          selectTextStyle: const TextStyle(
              color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
          unSelectTextStyle: const TextStyle(color: Colors.grey, fontSize: 18),
        ),
        Container(
            alignment: Alignment.centerLeft,
            child: const Icon(
              Icons.arrow_left,
              size: 80,
              color: Colors.red,
            )),
      ],
    );
  }
}
