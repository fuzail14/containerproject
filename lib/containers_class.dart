import 'dart:typed_data';

import 'package:assets_audio_player/assets_audio_player.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:newproject/Custom_Row.dart';
import 'package:newproject/containerController.dart';
import 'package:newproject/switch_theme_button.dart';

class ContainersClass extends StatefulWidget {
  const ContainersClass({Key? key}) : super(key: key);

  @override
  State<ContainersClass> createState() => _ContainersClassState();
}

class _ContainersClassState extends State<ContainersClass> {
  bool isPlaying = false;

  final AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<containerController>(
          init: containerController(),
          builder: (controller) {
            return SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  SwitchThemeButton(),
                  // CustomRow(
                  //   onTap: () {},
                  //   onTap1: () {},
                  //   onTap2: () {},
                  //   onTap3: () {},
                  //   image: Image(
                  //       image: AssetImage(
                  //     'assets/1R1C1ForwardCut.png',
                  //   )),
                  //   image1: Image(
                  //       image: AssetImage(
                  //     'assets/1R1C1ForwardCut.png',
                  //   )),
                  //   image2: Image(
                  //       image: AssetImage(
                  //     'assets/1R1C1ForwardCut.png',
                  //   )),
                  //   image3: Image(
                  //       image: AssetImage(
                  //     'assets/1R1C1ForwardCut.png',
                  //   )),
                  // ),

                  SizedBox(
                    height: 20,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () async {
                            print("press");
                            controller.setFlag();

                            print(controller.flag.value);

                            if (isplaying) {
                              await player.pause();
                            } else {
                              player.play(url);
                            }
                          },
                          child: Obx(
                            () => Container(
                              height: MediaQuery.of(context).size.height *
                                  0.120, //137
                              width: MediaQuery.of(context).size.width *
                                  0.230, //155

                              decoration: BoxDecoration(
                                  color: controller.flag.value
                                      ? Colors.blue
                                      : Colors.green,
                                  image: DecorationImage(
                                      //fit: BoxFit.cover,

                                      image: AssetImage(
                                    'assets/1R1C1ForwardCut.png',
                                  ))),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: MediaQuery.of(context).size.height *
                                0.120, //137
                            width:
                                MediaQuery.of(context).size.width * 0.230, //155

                            decoration: BoxDecoration(
                                color: Colors.black,
                                image: DecorationImage(
                                    //fit: BoxFit.cover,
                                    image: AssetImage(
                                  'assets/1R1C1ForwardCut.png',
                                ))),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: MediaQuery.of(context).size.height *
                                0.120, //137
                            width:
                                MediaQuery.of(context).size.width * 0.230, //155

                            decoration: BoxDecoration(
                                color: Colors.black,
                                image: DecorationImage(
                                    // fit: BoxFit.cover,
                                    image: AssetImage(
                                  'assets/1R1C1ForwardCut.png',
                                ))),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: MediaQuery.of(context).size.height *
                                0.120, //137
                            width:
                                MediaQuery.of(context).size.width * 0.230, //155

                            decoration: BoxDecoration(
                                color: Colors.black,
                                image: DecorationImage(
                                    //fit: BoxFit.cover,
                                    image: AssetImage(
                                  'assets/1R1C1ForwardCut.png',
                                ))),
                          ),
                        ),
                      ]),
                ]));
          }),
    );
  }
}
