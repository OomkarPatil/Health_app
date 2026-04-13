import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {

  final icon;
  final String title;
  final int subtitle;
  final color;

  const ExerciseTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.only(bottom: 14.0),
        child: Container(
          padding: EdgeInsets.all(16),
          decoration:
          BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(10)
          ),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                        padding: EdgeInsets.all(16),
                        color: color,

                        child: Icon(icon, color: Colors.white,)
                    ),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title,
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text( subtitle.toString() + ' Exercise',
                        style: TextStyle(
                          color: Colors.blue[400],
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),)
                    ],
                  ),
                ],
              ),
              Icon(Icons.more_horiz, color: Colors.blue,)
            ],
          ),
        ),
      );
  }
}
