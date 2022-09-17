import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {

  NextPage(this.name);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next Page'),
      ),
      body: Container(
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name),
            Center(
              child: ElevatedButton(
                  child: const Text('Back'),
                  onPressed: () {
                    Navigator.pop(context, 'welcome back');
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
