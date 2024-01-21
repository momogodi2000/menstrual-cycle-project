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
//       home: SexualProblemsPage(),
//     );
//   }
// }
//
// class SexualProblemsPage extends StatefulWidget {
//   @override
//   _SexualProblemsPageState createState() => _SexualProblemsPageState();
// }
//
// class _SexualProblemsPageState extends State<SexualProblemsPage> {
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
//                 'Have you experienced any particular problems in your sexual life?',
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
//                   SexualProblemsOptions(),
//                   SizedBox(height: 30),
//                 ],
//               ),
//             ),
//           ),
//           RedButton(
//             onPressed: () {
//               // Add logic to handle the button press
//               // For example, navigate to the next page (Checkbox.dart)
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => CheckboxPage(selectedOptions)),
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
// class SexualProblemsOptions extends StatefulWidget {
//   @override
//   _SexualProblemsOptionsState createState() => _SexualProblemsOptionsState();
// }
//
// class _SexualProblemsOptionsState extends State<SexualProblemsOptions> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SexualProblemsCheckbox(
//           title: 'None',
//           value: 'None',
//         ),
//         SexualProblemsCheckbox(
//           title: 'I am completely satisfied',
//           value: 'Completely Satisfied',
//         ),
//         SexualProblemsCheckbox(
//           title: 'Painful sexual intercourse',
//           value: 'Painful Intercourse',
//         ),
//         SexualProblemsCheckbox(
//           title: 'Difficulty reaching orgasm',
//           value: 'Difficulty Reaching Orgasm',
//         ),
//         SexualProblemsCheckbox(
//           title: 'Lack of libido',
//           value: 'Lack of Libido',
//         ),
//         SexualProblemsCheckbox(
//           title: 'Communication',
//           value: 'Communication',
//         ),
//         SexualProblemsCheckbox(
//           title: 'Poor body image',
//           value: 'Poor Body Image',
//         ),
//         SexualProblemsCheckbox(
//           title: "I don't have any sexual problems at the moment",
//           value: 'No Sexual Problems',
//         ),
//       ],
//     );
//   }
// }
//
// class SexualProblemsCheckbox extends StatelessWidget {
//   final String title;
//   final String value;
//
//   SexualProblemsCheckbox({required this.title, required this.value});
//
//   @override
//   Widget build(BuildContext context) {
//     return CheckboxListTile(
//       title: Text(title),
//       value: context
//           .watch<_SexualProblemsPageState>()
//           .selectedOptions
//           .contains(value),
//       onChanged: (bool? newValue) {
//         context
//             .read<_SexualProblemsPageState>()
//             ._handleCheckbox(value, newValue);
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
// class CheckboxPage extends StatelessWidget {
//   final List<String> selectedOptions;
//
//   CheckboxPage(this.selectedOptions);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Checkbox Page'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text(
//               'Selected Options:',
//               style: TextStyle(fontSize: 20),
//             ),
//             SizedBox(height: 10),
//             for (var option in selectedOptions)
//               Text(
//                 option,
//                 style: TextStyle(fontSize: 18),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }
