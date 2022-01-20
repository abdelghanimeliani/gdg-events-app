//add the colors here
import 'package:flutter/material.dart';

const Color darkblue = Color(0xFF1B2232);
const Color green = Color(0xff109d58);
const Color yellow = Color(0xfff9bb04);
const Color red = Color(0xfff9bb04);
const Color blue = Color(0xff4285f5);
const Color white = Color(0xffdde4ec);
const Color ghostwhite = Color(0xFfeff2f5);
const Color iconsColor = Color(0xFf4f677d);

// class CustomButton extends StatelessWidget {
//     final String text;
//     final VoidCallback onPressed;
//     final Color color;

//       const CustomButton({Key key, this.text, this.onPressed, this.color})
//           : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: RawMaterialButton(
//                       splashColor: Colors.black,
//                       fillColor: ghostwhite,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: <Widget>[
//                           SizedBox(width: 20),
//                           Align(
//                             alignment: Alignment.centerLeft,
//                             child: FaIcon(
//                               FontAwesomeIcons.apple,
//                               color: iconsColor,
//                               size: 17,
//                             ),
//                           ),
//                           SizedBox(
//                             width: 40,
//                           ),
//                           Align(
//                             alignment: Alignment.centerRight,
//                             child: Text(
//                               'Log In ',
//                               style: TextStyle(
//                                   fontSize: 12,
//                                   fontFamily: 'Poppins',
//                                   color: iconsColor),
//                               // style: TextStyle(color: Colors.grey),
//                             ),
//                           )
//                         ],
//                       ),
//                       shape: new RoundedRectangleBorder(
//                         borderRadius: new BorderRadius.circular(12.0),
//                       ),
//                       // style: OutlinedButton.styleFrom(
//                       //   shape: new RoundedRectangleBorder(
//                       //       borderRadius: new BorderRadius.circular(12.0)),
//                       //   primary: Colors.black,
//                       //   backgroundColor: Colors.grey[300],
//                       // ),
//                       onPressed: () {
//                         print('Pressed');
//                       },
//                     ),
//                     )
//   }
// }
