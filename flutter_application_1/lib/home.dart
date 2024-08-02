
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/custom/custom_widget.dart';
import 'package:flutter_application_1/custom/items.dart';
import 'package:flutter_application_1/custom/sec_custom.dart';
import 'package:flutter_application_1/detils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> tabat = [
    "For you",
    "Top charts",
    "Premium",
    "Hamada",
    "Var",
    "El Lap",
    "hi"
  ];


  List <String> image = [ "https://i.ytimg.com/vi/gxNhurkJr6g/maxresdefault.jpg" , "http://bigcodegames.com/wp-content/uploads/2019/09/1-1024x576.jpg" ,"https://i.ytimg.com/vi/6gkKWRAZUOw/maxresdefault.jpg" , "https://techsable.com/wp-content/uploads/2021/03/How-to-Play-Big-Google-Play-store-Games-without-Installing-techsable.com_.3.jpg" , "https://i.ytimg.com/vi/1Hxvb4XyWjw/maxresdefault.jpg" , "https://i.ytimg.com/vi/qkVx6IWrDZ8/maxresdefault.jpg"];
  List <String> title = [ "kopko" , "lol" ,"valo" , "angry bird" , "offline games" , "hay day games"];
  List <String> rating = [ "4.5" , "4.3" ,"4.7" , "5.0" , "3.9" , "5.0"];


    List <item> items = [
      item(
        image2: "https://i.ytimg.com/vi/gxNhurkJr6g/maxresdefault.jpg",
       rating2: "4.5",
        size2: "95 MB",
         subtitle2: "kopkosdsdsdsdsdsdsdsdsds",
          title2: "valo lol and it is very hhoh"
          ),
          item(
        image2: "http://bigcodegames.com/wp-content/uploads/2019/09/1-1024x576.jpg",
       rating2: "5.0",
        size2: "100 MB",
         subtitle2: "DSDSDSDSDSDSDSDS",
          title2: "THIS IS VERY GOOD GAME OF SESON"
          ),
          item(
        image2: "https://i.ytimg.com/vi/6gkKWRAZUOw/maxresdefault.jpg",
       rating2: "3.5",
        size2: "95 MB",
         subtitle2: "sasadasdssdsdsvbfdgf",
          title2: "popololiirr"
          )

    ];


  int x = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white12,
            borderRadius: BorderRadius.circular(30),
          ),
          child: const TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: UnderlineInputBorder(borderSide: BorderSide.none),
              suffixIcon: Icon(Icons.mic, color: Colors.white),
              prefixIcon: Icon(Icons.search, color: Colors.white),
              label: Text(
                "Search apps",
                style: TextStyle(color: Colors.white),
              ),
              labelStyle: TextStyle(color: Colors.white),
            ),
          ),
        ),
        
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),

          child: Container(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount: tabat.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        x = index;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          tabat[index],
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        SizedBox(height: 5),
                        Stack(
                          children: [
                            Container(
                              height: 2,
                              width: 100,
                              color: Color.fromARGB(168, 108, 108, 108),
                            ),
                            Container(
                              height: 2,
                              width: 90,
                              color: x == index ? Colors.red : Colors.transparent,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        actions: [
          Icon(Icons.notifications, color: Colors.grey),
          SizedBox(width: 10),
          Container(
            height: 35,
            width: 35,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
            ),
            child: Image.network(
              'https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?cs=srgb&dl=pexels-creation-hill-1681010.jpg&fm=jpg',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 15),
         

        ],
      ),
      body: Column(
        children: [
          // Your main content here
          SizedBox(height:  12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Recommended for you" , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold , color: Colors.white),),
              Icon(Icons.arrow_forward  ,color: Colors.white, size: 20, )
            ],
          ),


          SizedBox(height: 15,),
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: AlwaysScrollableScrollPhysics(),
              itemCount: image.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: custom(image: image[index], rating: rating[index], title: title[index]),
                ) ;
              },
              
            ),
          ),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Text("Sponsered . " , style: TextStyle(color: Colors.white , fontSize: 17 , fontWeight: FontWeight.bold),),
                  Text("Suggested for you" , style: TextStyle(color: Colors.white , fontSize: 17 , fontWeight: FontWeight.bold),),
                ],
              ),
              Icon(Icons.more_time_rounded , color: Colors.white,)
            ],
          ),

            SizedBox(height: 19,),

            Container(
              height: 300,
              child: ListView.builder(
                itemCount: items.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: AlwaysScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 12 , bottom: 12),
                    child: InkWell(
                      onTap: () {
                    
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MyWidget(itemty: items[index] ,),
              ),
            );
                      },
                      child: sec_custom(image2: items[index].image2,
                       rating2: items[index].rating2,
                        size2: items[index].size2,
                         subtitle2: items[index].subtitle2,
                          title2: items[index].title2
                          ),
                    )
                    
                    
                  );
                },
                ),
            )

        ],
      ),
    );
  }
}
