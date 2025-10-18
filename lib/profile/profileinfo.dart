import 'package:flutter/material.dart';
import 'package:week6/profile/profilecard.dart';

class Profileinfo extends StatelessWidget {
  const Profileinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Custome Count')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomProfileCard(
              name: "Phimmanee Nongdee",
              position: "Student",
              email: 'nongdee_p@silpakorn.edu',
              phoneNumber: '0925686788',
              imageUrl: 'https://picsum.photos/id/237/300/300',
            ),
          ],
        ),
      ),
    );
  }
}
