import 'package:first/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 104,
              ),
              SizedBox(
                height: 196,
                width: 203,
                child: Column(
                  children: <Widget>[
                    Image.asset("assets/images/Img_Profile.png"),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text("Username",
                        style:
                            TextStyle(color: Color(0xff525464), fontSize: 24)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        const Text("New York",
                            style: TextStyle(
                                color: Color(0xff838391), fontSize: 16)),
                        SvgPicture.asset("assets/icons/Oval.svg"),
                        const Text("New York",
                            style: TextStyle(
                                color: Color(0xff838391), fontSize: 16)),
                      ],
                    ),
                  ],
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Edit",
                    style: TextStyle(fontSize: 16, color: Color(0xffFFB19D)),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonWidget(
                      monTap: () {},
                      height: 60,
                      weight: 150,
                      hintext: "About me",
                      textcolor: const Color.fromARGB(255, 5, 5, 6),
                      backgroundcolor:
                          const Color.fromARGB(255, 255, 255, 255)),
                  const SizedBox(
                    width: 12,
                  ),
                  ButtonWidget(
                    monTap: () {
                      Navigator.of(context).pushNamed('/signin');
                    },
                    height: 60,
                    weight: 150,
                    hintext: "Log out",
                  ),
                ],
              ),
              const SizedBox(
                height: 95,
              ),
              Container(
                width: 600,
                height: 352,
                color: const Color(0xff525464),
                child: Column(children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFFFFFFF)),
                    ),
                    height: 80,
                    width: 315,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: <Widget>[
                        const SizedBox(
                          width: 27,
                        ),
                        SvgPicture.asset("assets/icons/Phone_icon.svg"),
                        const SizedBox(
                          width: 45,
                        ),
                        SvgPicture.asset("assets/icons/Rectangle.svg"),
                        const SizedBox(
                          width: 23,
                        ),
                        const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Phone number",
                                  style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                  )),
                              Text("+3788888888",
                                  style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                  )),
                            ]),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffFFFFFF)),
                    ),
                    height: 80,
                    width: 315,
                    child: Row(
                      children: <Widget>[
                        const SizedBox(
                          width: 27,
                        ),
                        SvgPicture.asset("assets/icons/Email_icon.svg"),
                        const SizedBox(
                          width: 45,
                        ),
                        SvgPicture.asset("assets/icons/Rectangle.svg"),
                        const SizedBox(
                          width: 23,
                        ),
                        const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Phone number",
                                  style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                  )),
                              Text("+3788888888",
                                  style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                  )),
                            ]),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffFFFFFF)),
                    ),
                    height: 80,
                    width: 315,
                    child: Row(
                      children: <Widget>[
                        const SizedBox(
                          width: 27,
                        ),
                        SvgPicture.asset("assets/icons/Completed_icon.svg"),
                        const SizedBox(
                          width: 45,
                        ),
                        SvgPicture.asset("assets/icons/Rectangle.svg"),
                        const SizedBox(
                          width: 23,
                        ),
                        const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Phone number",
                                  style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                  )),
                              Text("+3788888888",
                                  style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                  )),
                            ]),
                      ],
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
