import 'package:flutter/material.dart';
import 'package:instagram/profilepage.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Text("INSTAGRAM",style: TextStyle(fontSize: 15,color: Colors.black),),
        title: Text(
          "INSTAGRAM",
          style: TextStyle(fontSize: 15, color: Colors.black,fontFamily: 'Pacifico'),
        ),
        actions: [
          Icon(Icons.add_circle_outline,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.mark_unread_chat_alt_rounded),
          ),
          // Icon(Icons.more_vert),
        ],
        backgroundColor: Colors.grey,
        elevation: 0,
      ),
      body: Column(
        children: [
         Container(
           height: 100,
           child: ListView(
             scrollDirection: Axis.horizontal,
             children: [
               story('https://cdn2.iconfinder.com/data/icons/circle-avatars-1/128/050_girl_avatar_profile_woman_suit_student_officer-512.png'),
               story('https://cdn2.iconfinder.com/data/icons/circle-avatars-1/128/050_girl_avatar_profile_woman_suit_student_officer-512.png'),
               story('https://cdn2.iconfinder.com/data/icons/circle-avatars-1/128/050_girl_avatar_profile_woman_suit_student_officer-512.png'),
               story('https://cdn2.iconfinder.com/data/icons/circle-avatars-1/128/050_girl_avatar_profile_woman_suit_student_officer-512.png'),
               story('https://cdn2.iconfinder.com/data/icons/circle-avatars-1/128/050_girl_avatar_profile_woman_suit_student_officer-512.png'),
               story('https://cdn2.iconfinder.com/data/icons/circle-avatars-1/128/050_girl_avatar_profile_woman_suit_student_officer-512.png'),
               story('https://cdn2.iconfinder.com/data/icons/circle-avatars-1/128/050_girl_avatar_profile_woman_suit_student_officer-512.png'),
               story('https://cdn2.iconfinder.com/data/icons/circle-avatars-1/128/050_girl_avatar_profile_woman_suit_student_officer-512.png'),
             ],
           ),
         ),
          Container(
            height: 550,
            width: 390,
            child: GridView.count(
                crossAxisCount: 1,
              children: [
                posts(),
                posts(),
                posts(),
                posts(),
                posts(),
              ],

            ),
          ),
        ],
      ),
      bottomNavigationBar: SalomonBottomBar(
        //currentIndex: _currentIndex,
        // onTap: (i) => setState(() => _currentIndex = i),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: Colors.purple,
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text("Likes"),
            selectedColor: Colors.pink,
          ),

          /// Search
          SalomonBottomBarItem(
            icon: Icon(Icons.search),
            title: Text("Search"),
            selectedColor: Colors.orange,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
            selectedColor: Colors.teal,

          ),
        ],
      ),

    );
  }
  Container story(String url){
    return Container(
      margin: EdgeInsets.all(10),
      height: 90,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.6),
            spreadRadius: 4,
            blurRadius:0,

          ),
        ],
      ),
       child: CircleAvatar(
        radius: 70,
        backgroundImage: NetworkImage(url),),
    );
  }
  Container posts(){
    return Container(
    height: 400,
      width: 390,
      color: Colors.grey.withOpacity(0.3),
      child: Column(
        children: [
          Container(
            height: 50,
            width:390 ,
            child: Row(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context)=> profilepage()),);
                  },
                  child:CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage("https://cdn2.iconfinder.com/data/icons/circle-avatars-1/128/050_girl_avatar_profile_woman_suit_student_officer-512.png"),
                  ),
                ),

                Text("Alyamama",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(width: 190,),
                Image.asset('images/options.png',width: 30,height: 30,),
              ],
            ),
          ),
          Image.asset('images/do2.jpg',width: 390,height: 250,),
          Container(
            height: 50,
            width:390 ,
            child: Row(
              children: [
                SizedBox(width: 10,),
                Icon(Icons.favorite_border,size: 35,color: Colors.white,),
                SizedBox(width: 10,),
                Icon(Icons.chat_bubble_outline_rounded,color: Colors.white,size: 35,),
                SizedBox(width: 10,),
                Icon(Icons.send,size: 35,color: Colors.white,),
                SizedBox(width: 210,),
                Image.asset('images/save.png',width: 35,height: 35,),
              ],
            ),

          ),
          SizedBox(height: 5,),
        ],
      ),

    );
  }

}
