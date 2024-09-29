// import 'package:flutter/material.dart';
//
// class LoginFooter extends StatefulWidget {
//   const LoginFooter({super.key});
//
//   @override
//   State<LoginFooter> createState() => _LoginFooterState();
// }
//
// class _LoginFooterState extends State<LoginFooter> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SizedBox(
//           height: 50,
//         ),
//         Row(
//           children: [
//             Expanded(
//               child: Divider(
//                 thickness: 1, // Thickness of the line
//                 color: Colors.grey, // Line color
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 8), // Space around "or"
//               child: Text(
//                 'or',
//                 style: TextStyle(
//                     fontSize: 16, color: Colors.grey), // Customize text style
//               ),
//             ),
//             Expanded(
//               child: Divider(
//                 thickness: 1,
//                 color: Colors.grey,
//               ),
//             ),
//           ],
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             InkWell(
//               onTap: () {},
//               child: Container(
//                 width: 150,
//                 height: 65,
//                 child: Image.asset('assets/images/google.png'),
//               ),
//             ),
//             InkWell(
//               onTap: () {},
//               child: Container(
//                 width: 150,
//                 height: 65,
//                 child: Image.asset('assets/images/facebook.png'),
//               ),
//             ),
//           ],
//         ),
//         SizedBox(
//           height: 50,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Don\'t have an account?'),
//             InkWell(
//               onTap: (){
//               },
//               child: Text(
//                 'Register',
//                 style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff1F4C6B)),
//               ),
//             )
//           ],
//         )
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';

class LoginFooter extends StatefulWidget {
  const LoginFooter({super.key});

  @override
  State<LoginFooter> createState() => _LoginFooterState();
}

class _LoginFooterState extends State<LoginFooter> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // const SizedBox(
        //   height: 50,
        // ),
        Row(
          children: [
            const Expanded(
              child: Divider(
                thickness: 1, // Thickness of the line
                color: Colors.grey, // Line color
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8), // Space around "or"
              child: Text(
                'or',
                style: TextStyle(
                    fontSize: 16, color: Colors.grey), // Customize text style
              ),
            ),
            const Expanded(
              child: Divider(
                thickness: 1,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                width: 150,
                height: 65,
                child: Image.asset('assets/images/google.png'),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: 150,
                height: 65,
                child: Image.asset('assets/images/facebook.png'),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Don\'t have an account?'),
            InkWell(
              onTap: () {},
              child: const Text(
                'Register',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xff1F4C6B)),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
