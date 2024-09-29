import 'package:flutter/material.dart';
import 'package:real_estate_app/Screens/Startup_screen.dart';

import 'onboarding_data.dart';

class OnBordingScreen extends StatefulWidget {
  const OnBordingScreen({super.key});

  @override
  State<OnBordingScreen> createState() => _OnBordingScreenState();
}

class _OnBordingScreenState extends State<OnBordingScreen> {
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
            controller: _controller,
            itemCount: onboardingContents.length,
            itemBuilder: (context, index) {
              final content = onboardingContents[index];
              return Column(children: [
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/main.screen2.png",
                        height: 70,
                        width: 80,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => StartedScreen()));
                          },
                          child: const Text('Skip')),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        content.title,
                        style: const TextStyle(fontSize: 30),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        content.subtitle,
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Expanded(
                    child: Stack(children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(50),
                    ),
                    child: Image.asset(
                      content.image,
                      fit: BoxFit.cover,
                      width: 370,
                      height: 500,
                    ),
                  ),
                  Positioned(
                    bottom: 35,
                    right: 130,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                      onPressed: () {
                        if (index < onboardingContents.length - 1) {
                          _controller.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        }else{
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>StartedScreen()));
                        }
                      },
                      child: Text(
                        index == onboardingContents.length - 1
                            ? 'Start'
                            : "Next",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                  )
                ]))
              ]);
            }));
  }
}
