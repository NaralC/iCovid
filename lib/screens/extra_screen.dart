import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants.dart';

class ExtraScreen extends StatelessWidget {
  const ExtraScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        ClipPath(
          clipper: MyClipper(),
          child: Container(
            padding: EdgeInsets.only(left: 30, top: 50, right: 20),
            height: 350,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFFFFF176),
                  Color(0xFFE64A19),
                ],
              ),
              image: DecorationImage(
                image: AssetImage("assets/icons/virus.png"),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                Expanded(
                  child: Stack(
                    children: [
                      SvgPicture.asset(
                        "assets/images/Drcorona.svg",
                        width: 230,
                        fit: BoxFit.fitWidth,
                        alignment: Alignment.topCenter,
                      ),
                      Positioned(
                        top: 20,
                        left: 150,
                        child: Text(
                          "Stay home,\nsave the world.",
                          style:
                              kHeadingTextStyle.copyWith(color: Colors.white),
                        ),
                      ),
                      Container(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Text("Miscellaneous", style: kTitleTextstyle),
        Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 2),
                      blurRadius: 3,
                    ),
                  ]),
              child: Row(
                children: [
                  Image.asset(
                    "assets/icons/who_logo.png",
                    height: 75,
                    width: 75,
                  ),
                  SizedBox(width: 20),
                  Container(
                    child: RichText(
                      text: TextSpan(
                        style: kSubTextStyle.copyWith(fontSize: 13),
                        children: [
                          TextSpan(
                            text: "Learn More About Vaccines!\n",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.black87,
                                fontSize: 18),
                          ),
                          TextSpan(
                              text: "See a list of frequently asked questions\n"
                                  "comprehensively gathered in one place.")
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 2),
                      blurRadius: 3,
                    ),
                  ]),
              child: Row(
                children: [
                  Image.asset(
                    "assets/icons/bangkok_hospital.png",
                    height: 75,
                    width: 75,
                  ),
                  SizedBox(width: 20),
                  Container(
                    child: RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(
                        style: kSubTextStyle.copyWith(fontSize: 13),
                        children: [
                          TextSpan(
                            text: "Learn More About Covid-19!\n",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.black87,
                                fontSize: 18),
                          ),
                          TextSpan(
                              text:
                                  "Catch up with the current global situation \n"
                                  "and how you can make valuable contributions \n"
                                  "to the world. ")
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    ));
    //TODO: Display more facts
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}