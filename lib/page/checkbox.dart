// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: DiscomfortPage(),
//     );
//   }
// }
//
// class DiscomfortPage extends StatefulWidget {
//   @override
//   _DiscomfortPageState createState() => _DiscomfortPageState();
// }
//
// class _DiscomfortPageState extends State<DiscomfortPage> {
//   List<String> selectedOptions = [];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             height: 100, // Adjust the height as needed
//             color: Colors.red,
//             child: Center(
//               child: Text(
//                 'Are you feeling uncomfortable with the following elements below?',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 18,
//                 ),
//               ),
//             ),
//           ),
//           Expanded(
//             child: SingleChildScrollView(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   SizedBox(height: 20),
//                   DiscomfortOptions(),
//                   SizedBox(height: 30),
//                 ],
//               ),
//             ),
//           ),
//           RedButton(
//             onPressed: () {
//               // Add logic to handle the button press
//               // For example, navigate to the next page
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => NextPage()),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
//
//   void _handleCheckbox(String value, bool? newValue) {
//     if (newValue != null && newValue) {
//       selectedOptions.add(value);
//     } else {
//       selectedOptions.remove(value);
//     }
//   }
// }
//
// class DiscomfortOptions extends StatefulWidget {
//   @override
//   _DiscomfortOptionsState createState() => _DiscomfortOptionsState();
// }
//
// class _DiscomfortOptionsState extends State<DiscomfortOptions> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         DiscomfortCheckbox(
//           title: 'Painful menstrual cramps',
//           value: 'Painful Menstrual Cramps',
//         ),
//         DiscomfortCheckbox(
//           title: 'Symptoms of PMS',
//           value: 'Symptoms of PMS',
//         ),
//         DiscomfortCheckbox(
//           title: 'Unusual discharge',
//           value: 'Unusual Discharge',
//         ),
//         DiscomfortCheckbox(
//           title: 'Heavy menstrual flow',
//           value: 'Heavy Menstrual Flow',
//         ),
//         DiscomfortCheckbox(
//           title: 'Mood swings',
//           value: 'Mood Swings',
//         ),
//         DiscomfortCheckbox(
//           title: 'Other',
//           value: 'Other',
//         ),
//         DiscomfortCheckbox(
//           title: 'No! Everything is fine',
//           value: 'No! Everything is fine',
//         ),
//       ],
//     );
//   }
// }
//
// class DiscomfortCheckbox extends StatelessWidget {
//   final String title;
//   final String value;
//
//   DiscomfortCheckbox({required this.title, required this.value});
//
//   @override
//   Widget build(BuildContext context) {
//     return CheckboxListTile(
//       title: Text(title),
//       value:
//           context.watch<_DiscomfortPageState>().selectedOptions.contains(value),
//       onChanged: (bool? newValue) {
//         context.read<_DiscomfortPageState>()._handleCheckbox(value, newValue);
//       },
//     );
//   }
// }
//
// class RedButton extends StatelessWidget {
//   final VoidCallback onPressed;
//
//   RedButton({required this.onPressed});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       color: Colors.red,
//       child: ElevatedButton(
//         onPressed: onPressed,
//         style: ButtonStyle(
//           backgroundColor: MaterialStateProperty.all(Colors.red),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Text(
//             'Next',
//             style: TextStyle(fontSize: 18),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class NextPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Next Page'),
//       ),
//       body: Center(
//         child: Text(
//           'This is the next page!',
//           style: TextStyle(fontSize: 20),
//         ),
//       ),
//     );
//   }
// }
