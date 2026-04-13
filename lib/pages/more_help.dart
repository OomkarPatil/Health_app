import 'package:flutter/material.dart';
import 'package:dribble_clone/utilities/emoties_faces.dart';
import 'package:dribble_clone/utilities/exercise_tile.dart';

Widget _card(String text) {
  return Container(
    height: 90,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      gradient: LinearGradient(
        colors: [Colors.lightBlueAccent, Colors.blue, Colors.blueAccent],
      ),
    ),
    child: Center(
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

class MoreHelp extends StatefulWidget {
  const MoreHelp({super.key});

  @override
  State<MoreHelp> createState() => _MoreHelpState();
}

class _MoreHelpState extends State<MoreHelp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
          ]
      ),
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

                SizedBox(height: 30,),

                //Search Bar
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue[500],
                      borderRadius: BorderRadius.circular(10)
                  ),
                  padding: EdgeInsets.all(10),
                  child: Row(children: [

                    //Search icon
                    Icon(
                      Icons.search,
                      color: Colors.blue[200],
                    ),
                    SizedBox(width: 10,),
                    //search text
                    Text('Search',
                      style: TextStyle(
                        color: Colors.blue[200],
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],),
                ),

                SizedBox(height: 30,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('How do U feel?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.more_horiz,color: Colors.white,)
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            'Category',
                            style:
                            TextStyle(
                                color: Colors.blue,
                                fontSize: 20,fontWeight: FontWeight.bold
                            )
                        ),
                        Icon(Icons.more_horiz,color: Colors.blue,)
                      ],
                    ),

                    SizedBox(height: 20),

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

                    SizedBox(height: 20),

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


