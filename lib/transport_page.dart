import 'package:flutter/material.dart';

class TransportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // Responsive font size
    double fontSize = (screenWidth * 0.045).clamp(14, 20);

    return Scaffold(
      appBar: AppBar(
        title: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text('Transport Options'),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Large image
            Center(
              child: Image.asset(
                'assets/transport.jpg',
                width: screenWidth * 0.9, // 90% of screen width
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 20),

            Text(
              'Getting to Leading University is easy:\n\n'
              '- Bus: Frequent buses from Sylhet city.\n'
              '- Rickshaw: Available from nearby bus stops.\n'
              '- Private Car: Parking available on campus.\n'
              '- Ride-sharing: Services like Uber and Pathao operate nearby.',
              style: TextStyle(fontSize: fontSize, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
