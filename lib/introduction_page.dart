import 'package:flutter/material.dart';

class IntroductionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildPage(
      context,
      'Introduction',
      'Welcome to Leading University Ragibnagar, South Surma,Sylhet.\nThis guide helps visitors, students, and faculty navigate the campus. All content is available offline.',
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