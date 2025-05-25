import 'package:flutter/material.dart';

class CampusMapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text('Campus Map Overview'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
            
              '- Academic Buildings \n   RKB(Rabeya Khatun Building)\n   RAB(Ragib Ali Building)\n'
              '- Gallaries\n'
              '- Library\n'
              '- Cafeteria\n'
              '- Mosque\n'
              '- Labs\n'
              '- Parking Areas',
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
            SizedBox(height: 24),
            Expanded(
              child: Image.asset(
                'assets/map.png',
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
