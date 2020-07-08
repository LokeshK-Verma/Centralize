// import 'package:flutter/material.dart';

// class CustomTextField extends StatelessWidget {
//   CustomTextField(
//       {this.icon,
//       this.hint,
//       this.textEditingController,
//       this.keyboardType,
//       this.obsecure = false,
//       this.validator,
//       this.onSaved});

//   final FormFieldSetter<String> onSaved;
//   final Icon icon;
//   final TextEditingController textEditingController;
//   final TextInputType keyboardType;
//   final String hint;
//   final bool obsecure;
//   final FormFieldValidator<String> validator;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.only(left: 20, right: 20),
//       child: TextFormField(
//         onSaved: onSaved,
//         validator: validator,
//         autofocus: true,
//         obscureText: obsecure,
//         style: TextStyle(
//           fontSize: 15,
//         ),
//         decoration: InputDecoration(
//             hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//             hintText: hint,
//             enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(30),
//               borderSide: BorderSide(
//                 color:  Colors.deepPurple,
//                 width: 2,
//               ),
//             ),
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(30),
//               borderSide: BorderSide(
//                 color: Colors.deepPurple,
//                 width: 3,
//               ),
//             ),
//             prefixIcon: Padding(
//               child: IconTheme(
//                 data: IconThemeData(color: Theme.of(context).primaryColor),
//                 child: icon,
//               ),
//               padding: EdgeInsets.only(left: 30, right: 10),
//             )),
//       ),
//     );
//   }
// }