import 'package:flutter/material.dart';

class Options_Screen extends StatelessWidget {
  const Options_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const SizedBox(height: 110),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 16,
                          child: Icon(Icons.person, size: 18),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text('Lotu bhai',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                        const SizedBox(width: 10),
                        const Icon(
                          Icons.verified,
                          size: 15,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 6),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Follow',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 6),
                  const Text(
                    'Team Fitnerds 💙❤💛 ...',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.music_note,
                          size: 15,
                          color: Colors.white,
                        ),
                        Text('Original Audio - some music track',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const Icon(
                    Icons.favorite_outline,
                    color: Colors.white,
                  ),
                  const Text('601k',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  const SizedBox(height: 20),
                  const Icon(
                    Icons.comment_rounded,
                    color: Colors.white,
                  ),
                  const Text('899',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  const SizedBox(height: 20),
                  Transform(
                    transform: Matrix4.rotationZ(5.8),
                    child: const Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 50),
                  const Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
