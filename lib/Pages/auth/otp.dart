import 'package:Fitnerds/Pages/Homepage/homepage.dart';
import 'package:Fitnerds/widgets/reusablewigi.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  final defaultPinTheme = PinTheme(
    width: 56,
    margin: const EdgeInsets.only(left: 30),
    height: 56,
    textStyle: const TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
      borderRadius: BorderRadius.circular(50),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        title: const Center(
          child: Padding(
            padding: EdgeInsets.only(right: 30.0),
            child: Text(
              'OTP',
              style: TextStyle(
                  color: Colors.black, fontSize: 18, letterSpacing: 3),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/noti.png',
                  height: 350,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'Verificaton Code',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    'We have sent the Code verification to',
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1),
                  ),
                ),
              ),
              const Center(
                child: Text(
                  'Your Mobile Number',
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      '+91 6367978612',
                      style: TextStyle(
                          color: Colors.black87,
                          letterSpacing: 2,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/edit.png',
                      height: 25,
                      color: Colors.brown,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              buildPinPut(),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomePage()));
                },
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: reusableSolidButton('Submit')),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildPinPut() {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 20),
      child: Pinput(
        defaultPinTheme: defaultPinTheme,
        onCompleted: (pin) => print(pin),
      ),
    );
  }
}
