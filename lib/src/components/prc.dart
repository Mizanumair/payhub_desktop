// import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MultiScreenDialog extends StatefulWidget {
  @override
  _MultiScreenDialogState createState() => _MultiScreenDialogState();
}

class _MultiScreenDialogState extends State<MultiScreenDialog> {
  int _currentScreenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Multi-Screen Dialog'),
      content: _buildCurrentScreen(),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            _showNextScreen(); // Function to show the next screen
          },
          child: Text('Next Screen'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // Close the dialog
          },
          child: Text('Close'),
        ),
      ],
    );
  }

  Widget _buildCurrentScreen() {
    // Return the current screen based on the _currentScreenIndex
    switch (_currentScreenIndex) {
      case 0:
        return Screen1();
      case 1:
        return Screen2();
      default:
        return Container(); // Add more cases for additional screens
    }
  }

  void _showNextScreen() {
    setState(() {
      // Increment the screen index to switch to the next screen
      _currentScreenIndex++;
      if (_currentScreenIndex > 1) {
        _currentScreenIndex = 0; // Reset to the first screen after the last screen
      }
    });
  }
}

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      color: Colors.blue,
      child: Center(
        child: Text('Screen 1'),
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      color: Colors.red,
      child: Center(
        child: Text('Screen 2'),
      ),
    );
  }
}

//
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Dialog Box Example'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             showDialog(
//               context: context,
//               builder: (BuildContext context) {
//                 return TextChangeDialog();
//               },
//             );
//           },
//           child: Text('Open Dialog Box'),
//         ),
//       ),
//     );
//   }
// }
//
// class TextChangeDialog extends StatefulWidget {
//   @override
//   _TextChangeDialogState createState() => _TextChangeDialogState();
// }
//
// class _TextChangeDialogState extends State<TextChangeDialog> {
//   String _currentText = 'Click to Change';
//
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       title: Text('Text Change Dialog'),
//       content: GestureDetector(
//         onTap: () {
//           _changeText(); // Function to change text
//         },
//         child: Text(_currentText),
//       ),
//       actions: <Widget>[
//         TextButton(
//           onPressed: () {
//             Navigator.of(context).pop(); // Dialog box ko close karein
//           },
//           child: Text('Close'),
//         ),
//       ],
//     );
//   }
//
//   void _changeText() {
//     setState(() {
//       _currentText = 'Text Changed!'; // Change the text here
//     });
//   }
// }