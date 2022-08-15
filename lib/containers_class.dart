import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:newproject/switch_theme_button.dart';

class ContainersClass extends StatefulWidget {
  const ContainersClass({Key? key}) : super(key: key);

  @override
  State<ContainersClass> createState() => _ContainersClassState();
}

class _ContainersClassState extends State<ContainersClass> {
  int selc = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SwitchThemeButton(),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          GestureDetector(
            onTap: () {
              setState(() {
                if (selc == 0) {
                  selc = 0;
                } else
                  selc = 1;
              });
            },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.120, //137
              width: MediaQuery.of(context).size.width * 0.230, //155

              decoration: BoxDecoration(
                  color: selc == 0 ? Colors.blue : Colors.green,
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
              height: MediaQuery.of(context).size.height * 0.120, //137
              width: MediaQuery.of(context).size.width * 0.230, //155

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
              height: MediaQuery.of(context).size.height * 0.120, //137
              width: MediaQuery.of(context).size.width * 0.230, //155

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
              height: MediaQuery.of(context).size.height * 0.120, //137
              width: MediaQuery.of(context).size.width * 0.230, //155

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
      ])),
    );
  }
}
