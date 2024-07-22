import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:jp_app/src/features/dashbord/blurry_button.dart';
import 'package:jp_app/src/features/dashbord/card_widget.dart';

class DashbordScreen extends StatelessWidget {
  const DashbordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg_mainscreen.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Positioned(
            top: 80,
            left: 16.0,
            child: Text(
              'Choose your favorite\nSnack',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),
          ),
          Positioned(
            top: 160,
            left: 16.0,
            right: 16.0,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  BlurryButton(
                    text: "all Category ",
                    onPressed: () {},
                  ),
                  const SizedBox(width: 10.0),
                  BlurryButton(
                    text: "Salty ",
                    onPressed: () {},
                  ),
                  const SizedBox(width: 10.0),
                  BlurryButton(
                    text: "Sweet ",
                    onPressed: () {},
                  ),
                  const SizedBox(width: 10.0),
                  BlurryButton(
                    text: "Burger ",
                    onPressed: () {},
                  ),
                  const SizedBox(width: 10.0),
                  BlurryButton(
                    text: "Ice ",
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(
            bottom: 400,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Transform(
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.001)
                  ..rotateY(-0.2),
                alignment: FractionalOffset.center,
                child: BlurryContainer(
                  blur: 10,
                  width: 350,
                  height: 220,
                  elevation: 10,
                  padding: const EdgeInsets.all(32),
                  color: Colors.white.withOpacity(0.15),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Positioned(
                        top: 300,
                        left: -0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 234, 67, 192),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "4,8",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Text(
                        'Angi´s Yummy Burger',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Delish vegan burger\nthat tastes like heaven.",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.euro,
                            color: Colors.white,
                          ),
                          SizedBox(width: 8),
                          Text(
                            "13",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 260,
            top: 320,
            child: Image.asset(
              'assets/Burger_3D.png',
              width: 150,
              height: 150,
            ),
          ),
          const Positioned(
            bottom: 350,
            left: 20,
            child: Text(
              'We Recommend',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const Positioned(
            bottom: 100,
            left: 16.0,
            right: 16.0,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  MyCardWidget(
                    imagePaths: [
                      'assets/Icecream_3D.png',
                      'assets/Ice.cream.png',
                      'assets/ice cream stick_3D.png',
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
