import 'package:flutter/material.dart';
import 'package:real_estate_app/onboarding/onbording.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/logo.png',
            fit: BoxFit.cover,

            width: 500,
          ),
          Positioned(
              child: Image.asset(
            'assets/images/logo1.png',
            fit: BoxFit.cover,
                width: 500,
          )),
          Positioned(
              child:
                  Center(child: Image.asset('assets/images/main.screen2.png'))),
          Positioned(
             bottom:0,
              child: Image.asset(
                'assets/images/logo2.png',
                fit: BoxFit.cover,
                width: 500,
                height: 200,
              )),
          Positioned(
            top: MediaQuery.of(context).size.height / 1.7,
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Center(
                    child: Text(
                  '       Rise \n  Real Estate',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )),
                const SizedBox(
                  height: 150,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const OnBordingScreen()),
                      );

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade400,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                    child: const Text(
                      'Let\'s Start',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )),
                SizedBox(height: 20,),
                Text('Made with Love',style: TextStyle(color: Colors.white54,fontWeight: FontWeight.bold),),
                SizedBox(height: 5,),
                Text('V.1.0',style: TextStyle(color: Colors.white54,fontWeight: FontWeight.bold),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
