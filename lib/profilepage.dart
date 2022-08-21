import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
class profilepage extends StatefulWidget {
  const profilepage({Key? key}) : super(key: key);

  @override
  State<profilepage> createState() => _profilepageState();
}

class _profilepageState extends State<profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Padding(
       padding: EdgeInsets.all(10),
       child: Expanded(
         child: Stack(
           children: [
             Container(
               height: MediaQuery.of(context).size.width *2,
               decoration: BoxDecoration(
                   image:
                   DecorationImage(fit: BoxFit.cover, image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Cherry_blossom_appearance.jpg/220px-Cherry_blossom_appearance.jpg'))),
             ),
             Positioned(
               top: 100,
               child:
               Center(
                 child:  Container(
                   width: 380,
                   height: 700,
                   color: Colors.white,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       SizedBox(height: 50,),
                       Text("Alyamama",style: TextStyle(fontWeight: FontWeight.bold,
                         fontSize: 20,
                       ),),
                       Text("Baghdad",style: TextStyle(fontWeight: FontWeight.bold,
                         fontSize: 15,color: Colors.grey.withOpacity(0.7),
                       ),),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           name("photo",255),
                           name("fllowing",500),
                           name("fllowers",40),
                         ],
                       ),
                       Container(
                         padding: EdgeInsets.all(10),
                         height: 500,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           color: Colors.grey.withOpacity(0.3),
                         ),
                         child: GridView.count(
                           crossAxisCount: 3,
                           mainAxisSpacing: 4,
                           crossAxisSpacing: 4,
                           children: [
                             photo('https://palam.ca/wp-content/uploads/2018/11/D%C3%A9couvrez-trois-sites-d%E2%80%99images-gratuites-libre-de-droit-pour-votre-cr%C3%A9ativit%C3%A9e.jpg'),
                             photo('https://avatars.mds.yandex.net/i?id=e67c20f98bdc512c5d3bc20c140f8fac-5719595-images-taas-consumers&n=27&h=480&w=480'),
                             photo('https://swall.teahub.io/photos/small/21-218810_beautiful-wallpapers-download-for-mobile-download-beautiful-images.jpg'),
                             photo('https://i.pinimg.com/736x/5c/71/07/5c7107f004bf1e47e2ff7c3f4dfa4f6d.jpg'),
                             photo('https://www.thesoapkitchen.co.uk/4934-large_default/cherry-blossom-allergen-free-vaf2217-23pmb.jpg'),
                             photo('https://img.freepik.com/free-photo/beautiful-cherry-blossom_181624-668.jpg?w=2000'),
                             photo('https://jw-webmagazine.com/wp-content/uploads/2019/06/jw-5d15da96c49484.64193252.jpeg'),
                           ],
                         ),
                       ),
                     ],
                   ),
                 ),
               ),
             ),
             Positioned(
               top: 60,
               right: 150,
               child: Container(
                 height: 80,
                 width: 80,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(40),
                   boxShadow: [
                     BoxShadow(
                       color: Colors.grey.withOpacity(0.6),
                       spreadRadius: 5,
                       blurRadius: 3,

                     ),
                   ],
                 ),
                 child:  CircleAvatar(
                   radius: 70,
                   backgroundImage: NetworkImage("https://cdn2.iconfinder.com/data/icons/circle-avatars-1/128/050_girl_avatar_profile_woman_suit_student_officer-512.png"),
                 ),
               ),)
           ],

         ),
       ),

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
  Container name(String name, int num){
    return  Container(
      height: 60,
      child: Column(
        children: [
          Text(name,style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 20,
          ),),
          Text("$num",style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 15,color: Colors.grey.withOpacity(0.7),
          ),),
        ],
      ),
    );
  }
  Container photo(String url){
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(fit: BoxFit.cover,image: NetworkImage(url),),
      ),
    );
  }
}
