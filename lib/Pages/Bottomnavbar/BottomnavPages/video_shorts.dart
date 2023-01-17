import 'package:Fitnerds/Pages/Bottomnavbar/Videoshorts_Screens/content_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class Video_ShortsPage extends StatefulWidget {
  const Video_ShortsPage({Key? key}) : super(key: key);

  @override
  State<Video_ShortsPage> createState() => _Video_ShortsPageState();
}

class _Video_ShortsPageState extends State<Video_ShortsPage> {
  final List<String> Videos = [
    'https://assets.mixkit.co/videos/preview/mixkit-a-bodybuilder-is-drinking-water-23348-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-muscular-man-doing-crossfit-exercises-with-tire-23266-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-shirtless-bodybuilder-training-in-the-gym-29883-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-strong-man-doing-reps-in-a-gym-40777-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-fitness-man-training-in-the-gym-29882-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-young-woman-jogging-head-on-outdoors-40776-large.mp4',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return Content_Screen(
                    src: Videos[index],
                  );
                },
                itemCount: Videos.length,
                scrollDirection: Axis.vertical,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Shorts',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.white),
                    ),
                    Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.white,
                      size: 30,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
