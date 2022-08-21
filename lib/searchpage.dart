import 'package:flutter/material.dart';
import 'package:instagram/homepage.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
class searchpage extends StatefulWidget {
  const searchpage({Key? key}) : super(key: key);

  @override
  State<searchpage> createState() => _searchpageState();
}

class _searchpageState extends State<searchpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Column(
      children: [
        Center(
          child: Container(
            margin: EdgeInsets.only(top: 25),
            height: 40,
            width: 370,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey,
            ),
            child: Row(

              children: [
                Icon(Icons.search,color: Colors.white,),
                SizedBox(width: 10,),
                Text('search',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                    color: Colors.white),),
                SizedBox(width: 250,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context)=> homepage()),);
                  },
                  child:Icon(Icons.home,color: Colors.white,),
                ),

              ],
            ),
          ),
        ),
        //SizedBox(height: 10,),
        Container(
          height: MediaQuery.of(context).size.height -150,
          width:  MediaQuery.of(context).size.width,
          child: GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            children: [
              photo('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/cherry-blossom-facts-1578344148.jpg?crop=0.667xw:1.00xh;0.181xw,0&resize=640:*'),
              photo('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/gyeonghwa-station-royalty-free-image-864933180-1553628213.jpg?crop=0.668xw:1.00xh;0.167xw,0&resize=640:*'),
              photo('https://img.freepik.com/free-photo/fuji-mountain-cherry-blossoms-spring-japan_335224-227.jpg?w=2000'),
              photo('https://www.solosophie.com/wp-content/uploads/2019/04/Heerstra%C3%9Fe_cherry_blossom_arcade_europe.jpg'),
              photo('https://upload.wikimedia.org/wikipedia/commons/b/b1/Pink_Cherry_Blossom_tree.jpg'),
              photo('https://i.pinimg.com/736x/5c/71/07/5c7107f004bf1e47e2ff7c3f4dfa4f6d.jpg'),
              photo('https://www.thesoapkitchen.co.uk/4934-large_default/cherry-blossom-allergen-free-vaf2217-23pmb.jpg'),
              photo('https://img.freepik.com/free-photo/beautiful-cherry-blossom_181624-668.jpg?w=2000'),
              photo('https://jw-webmagazine.com/wp-content/uploads/2019/06/jw-5d15da96c49484.64193252.jpeg'),
              photo('https://thumbs.dreamstime.com/b/rainbow-love-heart-background-red-wood-60045149.jpg'),
              photo('https://images.pexels.com/photos/302743/pexels-photo-302743.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
              photo('https://media.istockphoto.com/photos/image-of-open-antique-book-on-wooden-table-with-glitter-overlay-picture-id1354441996?b=1&k=20&m=1354441996&s=170667a&w=0&h=O4JDagXhIh1N13PNN6G4_L5KB5QPZryin7FOrZnzYvc='),
              photo('https://www.whoa.in/download/mobile-wallpapers-hd-images-background-wallpapers-5-mobile-wallpaper'),
              photo('https://www.gettyimages.com/gi-resources/images/500px/983794168.jpg'),
              photo('https://replicate.com/api/models/yoadtew/zero-shot-image-to-text/files/0958ab0c-8d26-45f8-a5f1-a27a1f2259cc/baby.jpg'),
              photo('https://burst.shopify.com/photos/person-holds-a-book-over-a-stack-and-turns-the-page/download'),
              photo('https://palam.ca/wp-content/uploads/2018/11/D%C3%A9couvrez-trois-sites-d%E2%80%99images-gratuites-libre-de-droit-pour-votre-cr%C3%A9ativit%C3%A9e.jpg'),
              photo('https://avatars.mds.yandex.net/i?id=e67c20f98bdc512c5d3bc20c140f8fac-5719595-images-taas-consumers&n=27&h=480&w=480'),
              photo('https://swall.teahub.io/photos/small/21-218810_beautiful-wallpapers-download-for-mobile-download-beautiful-images.jpg'),
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
  Container photo(String url){
    return Container(
      decoration: BoxDecoration(
         image: DecorationImage(fit: BoxFit.cover,image: NetworkImage(url),),
      ),
    );
  }
}
