import 'package:flutter/material.dart';
import 'package:dribble_clone/utilities/emoties_faces.dart';
import 'package:dribble_clone/utilities/exercise_tile.dart';

Widget _card(String text) {
  return Container(
    height: 90,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      gradient: LinearGradient(
        colors: [Colors.orange.shade50, Colors.orange.shade200, Colors.orange.shade500],
      ),
    ),
    child: Center(
      child: Text(
        text,
        style: TextStyle(
          color: Colors.blue.shade900,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Column(children: [

          //Greeting Row
          Padding(
            padding: const EdgeInsets.all( 25.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //hi Omkar
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hi, Omkar!! ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 2,),
                        Text('12 April, 2026',
                          style: TextStyle(
                            color: Colors.blue[200],
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),)
                      ],
                    ),

                    //Notification bell
                    Container(
                      decoration:
                      BoxDecoration(
                          color: Colors.blue[500],
                          borderRadius: BorderRadius.circular(10)
                      ),
                      padding: EdgeInsets.all(10),
                      child: Icon(Icons.notifications,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),

                //Search Bar
                SizedBox(height: 30,),

                Column(
                  children: [

                    Row(
                      children: [
                        Expanded(child: _card('Relationship')),
                        SizedBox(width: 10),
                        Expanded(child: _card('Career')),
                      ],
                    ),

                    SizedBox(height: 10),

                    Row(
                      children: [
                        Expanded(child: _card('Education')),
                        SizedBox(width: 10),
                        Expanded(child: _card('Other')),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 10,),

          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
              child: Container(
                padding: EdgeInsets.all(25.0),
                color: Colors.white,
                child: Center(
                  child: Column(children: [

                    //exercise heading
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            'Consultant',
                            style:
                            TextStyle(
                                color: Colors.blue,
                                fontSize: 20,fontWeight: FontWeight.bold
                            )
                        ),
                        Icon(Icons.more_horiz,color: Colors.blue,)
                      ],
                    ),

                    SizedBox(height: 25),

                    //List Views
                    Expanded(
                      child: ListView(
                        children: [
                          ExerciseTile(
                            icon: Icons.person,
                            title: 'Jon Bella',
                            subtitle: ' Educator ',
                            color: Colors.blue,
                          ),
                          ExerciseTile(
                            icon: Icons.person,
                            title: 'Tom Anderson',
                            subtitle: 'Tutor',
                            color: Colors.orange,
                          ),

                        ],
                      ),
                    )
                  ],
                  ),
                ),
              ),
            ),
          )
        ],),
      ),
    );
  }
}
