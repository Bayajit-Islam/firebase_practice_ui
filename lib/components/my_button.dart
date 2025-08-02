import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String buttonName;
  final void Function()? route;

  const MyButton({super.key, required this.buttonName, required this.route});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: route,
      child: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Text(buttonName, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
            ),
          ),
        ),
      ),
    );
  }
}
