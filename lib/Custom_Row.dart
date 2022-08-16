import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomRow extends StatelessWidget {
  CustomRow({
    required this.onTap,
    required this.onTap1,
    required this.onTap2,
    required this.onTap3,
    required this.image,
    required this.image1,
    required this.image2,
    required this.image3,
  });
  void Function()? onTap;
  void Function()? onTap1;
  void Function()? onTap2;
  void Function()? onTap3;
  Image image;
  Image? image1;
  Image? image2;
  Image? image3;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      GestureDetector(
        onTap: () {},
        child: Container(
          height: MediaQuery.of(context).size.height * 0.120, //137
          width: MediaQuery.of(context).size.width * 0.230, //155

          decoration: BoxDecoration(
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
    ]);
  }
}
