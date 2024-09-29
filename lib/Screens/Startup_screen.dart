import 'package:flutter/material.dart';
import 'package:real_estate_app/Login_footer.dart';
import 'package:real_estate_app/Screens/Login_Screen.dart';

class StartedScreen extends StatefulWidget {
  const StartedScreen({super.key});

  @override
  State<StartedScreen> createState() => _StartedScreenState();
}

class _StartedScreenState extends State<StartedScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: Column(
              children: [
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Number of columns (2 for a 2x2 grid)
                    crossAxisSpacing: 10, // Spacing between columns
                    mainAxisSpacing: 10, // Spacing between rows
                  ),
                  itemCount: 4, // Total number of items (4 for 2x2 grid)
                  itemBuilder: (context, index) {
                    // List of your images
                    List<String> images = [
                      'assets/images/login2.png',
                      'assets/images/login3.png',
                      'assets/images/login4.png',
                      'assets/images/login1.png'
                    ];

                    // Return a single image for each grid item
                    return Image.asset(images[index]);
                  },
                  shrinkWrap:
                      true, // If inside another scrollable widget, avoid infinite height
                  padding: const EdgeInsets.all(10), // Optional padding
                ),

                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Text(
                        'Ready to ',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        'Explore?',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color(0xfff1F4C6B)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),

                ElevatedButton(style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: Size(265, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  )


                ),
                  onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                  },
                  child:
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.mail,color: Colors.white70,),
                      SizedBox(width: 5,),
                      Text('Continue with Email',style: TextStyle(color: Colors.white70),),

                    ],

                  ),

                ),
                const LoginFooter()


              ],
            ),
          ),
        ),
      ),
    );
  }
}
