import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  const ExerciseTile({super.key, required this.icon, required this.exerciseName, required this.numberOfExercises, required this.color});
  final icon;
  final String exerciseName;
  final int numberOfExercises;
  final color;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          padding: EdgeInsets.all(25),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      color: color,
                      padding: EdgeInsets.all(16),
                      child: Icon(icon, color: Colors.white,),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(exerciseName.toString(), style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      SizedBox(
                        height: 5,
                      ),
                      Text(numberOfExercises.toString()+' Exercise', style: TextStyle(color: Colors.grey[700]),),
                    ],
                  ),
                ],
              ),
              Icon(Icons.more_horiz)
            ],
          )
      ),
    );
  }
}
