import 'package:flutter/material.dart';

class ProfilePages extends StatelessWidget {
  const ProfilePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            //profile
            Container(
              decoration: BoxDecoration(color: Colors.lightBlueAccent,borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListTile(
                  leading: CircleAvatar(),
                  title: Text('Bayajit islam'),
                  subtitle: Text('None'),
                ),
              ),
            ),
            //


          ],
        ),
      ),
    )
    ;
  }
}
