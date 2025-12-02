import 'package:flutter/material.dart';

class Cardw extends StatelessWidget {
  final IconData icon;
  final String title;
  const Cardw({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 100,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: EdgeInsetsGeometry.all(8),
          child: Row(
            children: [
              Icon(icon, size: 60),
              SizedBox(width: 8),
              SizedBox(
                width: 250,
                child: Text(title, style: TextStyle(fontSize: 16)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
