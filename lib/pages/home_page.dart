import 'package:dribble_clone/utilities/emoties_faces.dart';
import 'package:dribble_clone/utilities/exercise_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

                //How do Your feel
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

                SizedBox(height: 10,),

                //Emojis faces
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //bad
                    Column(
                      children: [
                        EmotiesFaces(
                          emotiface: '😔',
                        ),
                        SizedBox(height: 10,) ,
                        Text('bad',
                          style: TextStyle(color: Colors.white, fontSize: 18 ),
                        )
                      ],
                    ),
                    //fine
                    Column(
                      children: [
                        EmotiesFaces(
                          emotiface: '😕',
                        ),
                        SizedBox(height: 10,) ,
                        Text('fine',
                          style: TextStyle(color: Colors.white, fontSize: 18 ),
                        )
                      ],
                    ),
                    //good
                    Column(
                      children: [
                        EmotiesFaces(
                          emotiface: '😌',
                        ),
                        SizedBox(height: 10,) ,
                        Text('Good',
                          style: TextStyle(color: Colors.white, fontSize: 18 ),
                        )
                      ],
                    ),
                    //excellent
                    Column(
                      children: [
                        EmotiesFaces(
                          emotiface: '😜',
                        ),
                        SizedBox(height: 10,) ,
                        Text('Excellent',
                          style: TextStyle(color: Colors.white, fontSize: 18   ),
                        )
                      ],
                    )
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
                          'Exercises',
                          style:
                          TextStyle(
                            color: Colors.blue,
                            fontSize: 20,fontWeight: FontWeight.bold
                          )
                        ),
                        Icon(Icons.more_horiz,color: Colors.blue,)
                      ],
                    ),

                    SizedBox(height: 25,),

                    //List Views
                    Expanded(
                      child: ListView(
                        children: [
                          ExerciseTile(
                            icon: Icons.favorite,
                            title: 'Speaking Skills',
                            subtitle: 13,
                            color: Colors.blue,
                          ),
                          ExerciseTile(
                            icon:Icons.book,
                            title: 'Reading Skills',
                            subtitle: 2,
                            color: Colors.pink,
                          ),
                          ExerciseTile(
                            icon:Icons.star_outline_outlined,
                            title: 'Writing Skills',
                            subtitle: 4,
                            color: Colors.orange,
                          ),
                          ExerciseTile(
                            icon:Icons.architecture_sharp,
                            title: 'Technical Skills',
                            subtitle: 6,
                            color: Colors.green,
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
