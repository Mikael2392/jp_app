import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:jp_app/src/features/dashbord/dashbord_screen.dart';

class SnackScreen extends StatelessWidget {
  const SnackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg_startscreen.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 100,
            right: -100,
            child: Image.asset(
              'assets/chick cupcakes_3D.png',
            ),
          ),
          Positioned(
            bottom: 120,
            child: Image.asset(
              'assets/T2.png',
            ),
          ),
          Positioned.fill(
            bottom: 100,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: BlurryContainer(
                blur: 8,
                width: 350,
                height: 220,
                elevation: 10,
                padding: const EdgeInsets.all(32),
                color: Colors.white.withOpacity(0.15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Feeling Snackish Today?',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "Explore Angi's most popular snack selection\nand get instantly happy.",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DashbordScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 226, 115, 152),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 10),
                          textStyle: const TextStyle(fontSize: 18),
                        ),
                        child: const Text('Order Now'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
