import 'package:flutter/material.dart';

class EmotionFace extends StatelessWidget {
  final String emotionface;
  const EmotionFace({super.key, required this.emotionface});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.blue[600]),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text('😊', style: TextStyle(fontSize: 28),),
      ),
    );
  }
}
