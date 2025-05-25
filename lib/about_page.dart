
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildPage(
      context,
      'About This App',
      'Name: Discover LU\n'
      'Version: 1.0.0\n'
      'Offline capable\n'
      'Built by: Maliha Maimuna Shashi,Dept. of CSE, LU\n'
      'Contact:  cse_0182220012101155@lus.ac.bd ',
    );
  }
}

Widget _buildPage(BuildContext context, String title, String content) {
  return Scaffold(
    appBar: AppBar(
      title: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(title),
      ),
    ),
    body: Padding(
      padding: EdgeInsets.all(16),
      child: Text(
        content,
        style: TextStyle(fontSize: 16, height: 1.4),
      ),
    ),
  );
}
