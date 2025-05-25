import 'package:flutter/material.dart';

class TravelTipsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildPage(
      context,
      'Travel Tips',
      '- Carry your university ID or visitor pass at all times.\n'
      '- Use the campus shuttle service for easy travel within campus.\n'
      '- Follow posted signs and campus rules to stay safe.\n'
      '- Keep emergency contact numbers handy (Campus Security: +880-XXXX-XXXXXX)',
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
